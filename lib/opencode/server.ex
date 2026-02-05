defmodule OpenCode.Server do
  @moduledoc """
  OpenCode server process management.

  Mirrors the JS SDK's `createOpencodeServer()` behavior.
  """

  defstruct [:port, :url]

  @type t :: %__MODULE__{
          port: port() | nil,
          url: String.t() | nil
        }

  @spec create(keyword()) :: {:ok, t()} | {:error, term()}
  def create(opts \\ []) do
    host = Keyword.get(opts, :hostname, "127.0.0.1")
    num = Keyword.get(opts, :port, 4096)
    time = Keyword.get(opts, :timeout, 5000)
    config = Keyword.get(opts, :config, %{})

    args = build_args(host, num, config)
    env = build_env(config)

    port =
      Port.open({:spawn_executable, find_executable("opencode")}, [
        :binary,
        :exit_status,
        :use_stdio,
        :stderr_to_stdout,
        args: args,
        env: env
      ])

    case wait_for_ready(port, time, "", host, num) do
      {:ok, url} ->
        {:ok, %__MODULE__{port: port, url: url}}

      {:error, reason} ->
        if Port.info(port) != nil, do: Port.close(port)
        {:error, reason}
    end
  end

  @spec close(t()) :: :ok
  def close(%__MODULE__{port: port}) when is_port(port) do
    Port.close(port)
    :ok
  end

  def close(_), do: :ok

  defp build_args(host, num, config) do
    args = ["serve", "--hostname=#{host}", "--port=#{num}"]

    level =
      case config do
        %{logLevel: val} -> val
        %{"logLevel" => val} -> val
        _ -> nil
      end

    case level do
      nil -> args
      val -> args ++ ["--log-level=#{val}"]
    end
  end

  defp build_env(config) do
    base =
      System.get_env()
      |> Enum.map(fn {key, val} -> {String.to_charlist(key), String.to_charlist(val)} end)
      |> Enum.reject(fn {key, _} -> key == ~c"OPENCODE_CONFIG_CONTENT" end)

    [{~c"OPENCODE_CONFIG_CONTENT", String.to_charlist(Jason.encode!(config))} | base]
  end

  defp find_executable(name) do
    case System.find_executable(name) do
      nil -> String.to_charlist(name)
      path -> String.to_charlist(path)
    end
  end

  defp wait_for_ready(port, time, buf, host, num) do
    deadline = System.monotonic_time(:millisecond) + time
    base_url = "http://#{host}:#{num}"
    do_wait(port, deadline, buf, base_url)
  end

  defp do_wait(port, deadline, buf, base_url) do
    left = deadline - System.monotonic_time(:millisecond)

    case left <= 0 do
      true ->
        case health_ok?(base_url) do
          true -> {:ok, base_url}
          false -> {:error, {:timeout, "Server did not start within timeout"}}
        end

      false ->
        receive do
          {^port, {:data, data}} ->
            next = buf <> data

            case parse_url(next) do
              {:ok, url} -> {:ok, url}
              :not_found -> do_wait(port, deadline, next, base_url)
            end

          {^port, {:exit_status, status}} ->
            {:error, {:exit_status, status, buf}}
        after
          min(left, 100) ->
            do_wait(port, deadline, buf, base_url)
        end
    end
  end

  defp parse_url(out) do
    out
    |> String.split("\n")
    |> Enum.find_value(:not_found, fn line ->
      case String.contains?(line, "opencode server listening") do
        true ->
          case Regex.run(~r/on\s+(https?:\/\/[^\s]+)/, line) do
            [_, url] -> {:ok, url}
            _ -> :not_found
          end

        false ->
          :not_found
      end
    end)
  end

  defp health_ok?(url) do
    case Req.get(url <> "/global/health",
           connect_options: [timeout: 500],
           receive_timeout: 500
         ) do
      {:ok, %{status: status}} when status in 200..299 -> true
      _ -> false
    end
  end
end
