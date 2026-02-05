defmodule OpenCode.Client do
  @moduledoc """
  HTTP client used by generated operations.
  """

  @default_base_url "http://127.0.0.1:4096"

  @spec request(map()) :: {:ok, any()} | {:error, any()}
  def request(%{url: url, method: method} = params) do
    opts = params[:opts] || []
    base = Keyword.get(opts, :base_url, @default_base_url)
    time = Keyword.get(opts, :timeout, :infinity)
    headers = Keyword.get(opts, :headers, [])
    dir = Keyword.get(opts, :directory)

    req =
      Req.new(url: base <> url, method: method, receive_timeout: time)
      |> add_headers(headers)
      |> add_directory(dir)
      |> add_body(params[:body])
      |> add_query(params[:query])

    case sse?(params) do
      true ->
        req = Req.Request.put_header(req, "accept", "text/event-stream")
        {:ok, %{stream: sse_stream(req)}}

      false ->
        case Req.request(req) do
          {:ok, %{status: status, body: body}} when status in 200..299 ->
            {:ok, body}

          {:ok, %{status: status, body: body}} ->
            {:error, {status, body}}

          {:error, error} ->
            {:error, error}
        end
    end
  end

  defp add_body(req, nil), do: req
  defp add_body(req, body), do: Req.merge(req, json: body)

  defp add_query(req, nil), do: req
  defp add_query(req, query), do: Req.merge(req, params: query)

  defp add_headers(req, []), do: req

  defp add_headers(req, headers) when is_map(headers) do
    Enum.reduce(headers, req, fn {key, val}, acc ->
      Req.Request.put_header(acc, to_string(key), to_string(val))
    end)
  end

  defp add_headers(req, headers) do
    Enum.reduce(headers, req, fn {key, val}, acc ->
      Req.Request.put_header(acc, to_string(key), to_string(val))
    end)
  end

  defp add_directory(req, nil), do: req
  defp add_directory(req, ""), do: req

  defp add_directory(req, dir) do
    val =
      case String.match?(dir, ~r/[^\x00-\x7F]/) do
        true -> URI.encode(dir)
        false -> dir
      end

    Req.Request.put_header(req, "x-opencode-directory", val)
  end

  defp sse?(%{url: url, method: :get}) when url in ["/event", "/global/event"], do: true
  defp sse?(_), do: false

  defp sse_stream(req) do
    Stream.resource(
      fn ->
        ref = make_ref()
        pid = spawn_link(fn -> sse_run(req, self(), ref) end)
        %{ref: ref, pid: pid, buf: ""}
      end,
      fn state ->
        receive do
          {ref, :data, data} when ref == state.ref ->
            {events, buf} = parse_sse(state.buf <> data)
            {events, %{state | buf: buf}}

          {ref, :done} when ref == state.ref ->
            {:halt, state}

          {ref, :error, error} when ref == state.ref ->
            {[{:error, error}], state}
        end
      end,
      fn state ->
        case Process.alive?(state.pid) do
          true -> Process.exit(state.pid, :normal)
          false -> :ok
        end
      end
    )
  end

  defp sse_run(req, pid, ref) do
    case Req.request(req,
           into: fn {:data, data}, acc ->
             send(pid, {ref, :data, data})
             {:cont, acc}
           end
         ) do
      {:ok, _} -> send(pid, {ref, :done})
      {:error, error} -> send(pid, {ref, :error, error})
    end
  end

  defp parse_sse(data) do
    parts = String.split(data, "\n\n")
    count = length(parts)

    case count do
      0 -> {[], ""}
      1 -> {[], data}
      _ ->
        events = parts |> Enum.drop(-1) |> Enum.flat_map(&decode_sse/1)
        {events, List.last(parts)}
    end
  end

  defp decode_sse(chunk) do
    data =
      chunk
      |> String.split("\n")
      |> Enum.filter(&String.starts_with?(&1, "data:"))
      |> Enum.map(&String.replace_prefix(&1, "data:", ""))
      |> Enum.join("\n")
      |> String.trim()

    case data do
      "" -> []
      _ ->
        case Jason.decode(data) do
          {:ok, val} -> [val]
          {:error, _} -> [data]
        end
    end
  end
end
