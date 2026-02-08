#!/usr/bin/env elixir

# Minimal "Hello World" example for the OpenCode Elixir SDK.
#
# Starts an OpenCode server, creates a session, sends a single prompt,
# and prints the response.
#
# To run:
#   mix run examples/hello.exs
#
# Prerequisites:
#   - opencode CLI must be installed and available in PATH
#   - mix deps.get && mix compile

defmodule Hello do
  def run do
    port = find_available_port(4096, 5000)
    IO.puts("Starting OpenCode server on port #{port}...")

    {:ok, %{client: client, server: server}} = OpenCode.create(port: port)

    try do
      IO.puts("Server started. Creating session...")

      {:ok, session} =
        OpenCode.Generated.Operations.session_create(%{title: "hello-world"}, client)

      session_id = session["id"]
      IO.puts("Session created (#{session_id}). Sending prompt...\n")

      {:ok, response} =
        OpenCode.Generated.Operations.session_prompt(
          session_id,
          %{parts: [%{type: "text", text: "Hello! What can you do?"}]},
          Keyword.merge(client, timeout: :infinity)
        )

      response["parts"]
      |> Enum.each(fn
        %{"type" => "text", "text" => text} -> IO.puts(text)
        _ -> :ok
      end)
    after
      OpenCode.close(%{server: server})
      IO.puts("\nServer stopped.")
    end
  end

  defp find_available_port(start_port, end_port) do
    Enum.find(start_port..end_port, fn port ->
      case :gen_tcp.listen(port, [:binary, active: false, reuseaddr: true]) do
        {:ok, sock} -> :gen_tcp.close(sock); true
        {:error, _} -> false
      end
    end) || raise "No available ports in range #{start_port}-#{end_port}"
  end
end

Hello.run()
