defmodule OpenCode.Tui do
  @moduledoc """
  OpenCode TUI process management.

  Mirrors the JS SDK's `createOpencodeTui()` behavior.
  """

  defstruct [:port]

  @type t :: %__MODULE__{port: port() | nil}

  @spec create(keyword()) :: {:ok, t()}
  def create(opts \\ []) do
    args = build_args(opts)
    env = build_env(Keyword.get(opts, :config, %{}))

    port =
      Port.open({:spawn_executable, find_executable("opencode")}, [
        :binary,
        :exit_status,
        :use_stdio,
        args: args,
        env: env
      ])

    {:ok, %__MODULE__{port: port}}
  end

  @spec close(t()) :: :ok
  def close(%__MODULE__{port: port}) when is_port(port) do
    Port.close(port)
    :ok
  end

  def close(_), do: :ok

  defp build_args(opts) do
    []
    |> put_arg(opts, :project, "--project=")
    |> put_arg(opts, :model, "--model=")
    |> put_arg(opts, :session, "--session=")
    |> put_arg(opts, :agent, "--agent=")
  end

  defp put_arg(args, opts, key, flag) do
    case Keyword.get(opts, key) do
      nil -> args
      val -> args ++ [flag <> val]
    end
  end

  defp build_env(config) do
    [{~c"OPENCODE_CONFIG_CONTENT", String.to_charlist(Jason.encode!(config))}]
  end

  defp find_executable(name) do
    case System.find_executable(name) do
      nil -> String.to_charlist(name)
      path -> String.to_charlist(path)
    end
  end
end
