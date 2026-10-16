defmodule OpenCode.ClientTest do
  use ExUnit.Case, async: true

  test "sends JSON bodies, query parameters, custom headers, and encoded directories" do
    {base_url, request} = serve(201, ~s({"id":"session-test"}))

    client =
      OpenCode.create_client(
        base_url: base_url,
        directory: "/tmp/日本語",
        headers: %{"authorization" => "Bearer test"},
        timeout: 2_000
      )

    assert {:ok, %{"id" => "session-test"}} =
             OpenCode.Generated.Operations.session_create(%{title: "test"}, Keyword.put(client, :workspace, "a b"))

    raw = Task.await(request)
    ["POST", target, "HTTP/1.1" <> _] = String.split(raw, " ", parts: 3)
    uri = URI.parse(target)
    assert uri.path == "/session"
    assert URI.decode_query(uri.query) == %{"workspace" => "a b", "directory" => "/tmp/日本語"}
    assert raw =~ "authorization: Bearer test"
    assert raw =~ "x-opencode-directory: /tmp/%E6%97%A5%E6%9C%AC%E8%AA%9E"
    assert raw =~ ~s({"title":"test"})
  end

  test "returns HTTP failures with status and decoded body" do
    {base_url, request} = serve(404, ~s({"error":"missing"}))

    assert {:error, {404, %{"error" => "missing"}}} =
             OpenCode.Generated.Session.session_get("missing", base_url: base_url)

    assert Task.await(request) =~ "GET /session/missing HTTP/1.1"
  end

  test "streams SSE events across chunks and finishes when the response closes" do
    body = "data: {\"type\":\"first\"}\n\ndata: {\"type\":\"second\"}\n\n"
    {base_url, request} = serve(200, body, "text/event-stream")

    assert {:ok, %{stream: stream}} = OpenCode.Generated.Operations.event_subscribe(base_url: base_url)
    task = Task.async(fn -> Enum.to_list(stream) end)
    assert [%{"type" => "first"}, %{"type" => "second"}] = Task.await(task, 2_000)
    assert Task.await(request) =~ "accept: text/event-stream"
  end

  test "stopping an SSE stream closes the HTTP connection" do
    {:ok, listener} = :gen_tcp.listen(0, [:binary, active: false])
    {:ok, {_, port}} = :inet.sockname(listener)

    server =
      Task.async(fn ->
        try do
          {:ok, socket} = :gen_tcp.accept(listener, 2_000)

          try do
            read_request(socket, "")

            :gen_tcp.send(socket, [
              "HTTP/1.1 200 OK\r\ncontent-type: text/event-stream\r\nconnection: close\r\n\r\n",
              "data: {\"type\":\"connected\"}\n\n"
            ])

            :gen_tcp.recv(socket, 0, 2_000)
          after
            :gen_tcp.close(socket)
          end
        after
          :gen_tcp.close(listener)
        end
      end)

    {:ok, %{stream: stream}} =
      OpenCode.Generated.Operations.event_subscribe(base_url: "http://127.0.0.1:#{port}")

    consumer = Task.async(fn -> Enum.take(stream, 1) end)
    assert [%{"type" => "connected"}] = Task.await(consumer, 2_000)
    assert {:error, :closed} = Task.await(server, 2_000)
  end

  test "stopping an SSE stream drains queued messages and preserves unrelated messages" do
    {:ok, listener} = :gen_tcp.listen(0, [:binary, active: false])
    {:ok, {_, port}} = :inet.sockname(listener)
    first = "data: {\"type\":\"first\"}\n\n"
    remaining = "data: {\"type\":\"second\"}\n\ndata: {\"type\":\"third\"}\n\n"

    server =
      Task.async(fn ->
        try do
          {:ok, socket} = :gen_tcp.accept(listener, 2_000)

          try do
            read_request(socket, "")

            :gen_tcp.send(socket, [
              "HTTP/1.1 200 OK\r\ncontent-type: text/event-stream\r\n",
              "content-length: #{byte_size(first) + byte_size(remaining)}\r\nconnection: close\r\n\r\n",
              first
            ])

            receive do
              :finish -> :gen_tcp.send(socket, remaining)
            after
              2_000 -> flunk("Consumer did not receive the first event")
            end
          after
            :gen_tcp.close(socket)
          end
        after
          :gen_tcp.close(listener)
        end
      end)

    {:ok, %{stream: stream}} =
      OpenCode.Generated.Operations.event_subscribe(base_url: "http://127.0.0.1:#{port}")

    send(self(), :unrelated)
    unrelated_ref = make_ref()
    send(self(), {unrelated_ref, :data, "another stream"})

    events =
      stream
      |> Stream.each(fn _event ->
        send(server.pid, :finish)

        receive do
          {reference, :done} = message when is_reference(reference) -> send(self(), message)
        after
          2_000 -> flunk("SSE worker did not finish")
        end
      end)
      |> Enum.take(1)

    assert events == [%{"type" => "first"}]
    Task.await(server)
    assert_received :unrelated
    assert_received {^unrelated_ref, :data, "another stream"}
    refute_received {_reference, :data, _}
    refute_received {_reference, :done}
  end

  test "SSE HTTP errors preserve status and body without emitting events" do
    for {status, body, content_type, expected} <- [
          {401, ~s({"error":"unauthorized"}), "application/json", %{"error" => "unauthorized"}},
          {500, "server failed", "text/plain", "server failed"},
          {403, "data: {\"type\":\"forbidden\"}\n\n", "text/event-stream", "data: {\"type\":\"forbidden\"}\n\n"}
        ] do
      {base_url, request} = serve(status, body, content_type)
      {:ok, %{stream: stream}} = OpenCode.Generated.Operations.event_subscribe(base_url: base_url)
      consumer = Task.async(fn -> Enum.to_list(stream) end)

      assert [{:error, {^status, ^expected}}] = Task.await(consumer, 2_000)
      Task.await(request)
    end
  end

  test "SSE connection failures emit one transport error and terminate" do
    {:ok, listener} = :gen_tcp.listen(0, [:binary, active: false])
    {:ok, {_, port}} = :inet.sockname(listener)
    :gen_tcp.close(listener)

    {:ok, %{stream: stream}} =
      OpenCode.Generated.Operations.event_subscribe(base_url: "http://127.0.0.1:#{port}")

    consumer = Task.async(fn -> Enum.to_list(stream) end)
    assert [{:error, %Req.TransportError{reason: :econnrefused}}] = Task.await(consumer, 2_000)
  end

  test "SSE mid-stream failures preserve delivered events and then terminate" do
    body = "data: {\"type\":\"first\"}\n\n"
    {base_url, request} = serve(200, body, "text/event-stream", byte_size(body) + 100)
    {:ok, %{stream: stream}} = OpenCode.Generated.Operations.event_subscribe(base_url: base_url)
    consumer = Task.async(fn -> Enum.to_list(stream) end)

    assert [%{"type" => "first"}, {:error, %Req.TransportError{}}] = Task.await(consumer, 2_000)
    Task.await(request)
  end

  defp serve(status, body, content_type \\ "application/json", content_length \\ nil) do
    {:ok, listener} = :gen_tcp.listen(0, [:binary, active: false, reuseaddr: true])
    {:ok, {_, port}} = :inet.sockname(listener)

    task =
      Task.async(fn ->
        try do
          {:ok, socket} = :gen_tcp.accept(listener, 5_000)

          try do
            request = read_request(socket, "")

            :ok =
              :gen_tcp.send(socket, [
                "HTTP/1.1 #{status} Response\r\n",
                "content-type: #{content_type}\r\n",
                "content-length: #{content_length || byte_size(body)}\r\n",
                "connection: close\r\n\r\n"
              ])

            for chunk <- :binary.bin_to_list(body), do: :gen_tcp.send(socket, <<chunk>>)
            request
          after
            :gen_tcp.close(socket)
          end
        after
          :gen_tcp.close(listener)
        end
      end)

    {"http://127.0.0.1:#{port}", task}
  end

  defp read_request(socket, buffer) do
    case String.split(buffer, "\r\n\r\n", parts: 2) do
      [headers, body] ->
        length =
          case Regex.run(~r/content-length: (\d+)/i, headers) do
            [_, length] -> String.to_integer(length)
            nil -> 0
          end

        if byte_size(body) >= length, do: buffer, else: receive_request(socket, buffer)

      _ ->
        receive_request(socket, buffer)
    end
  end

  defp receive_request(socket, buffer) do
    {:ok, chunk} = :gen_tcp.recv(socket, 0, 2_000)
    read_request(socket, buffer <> chunk)
  end
end
