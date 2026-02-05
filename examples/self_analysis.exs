#!/usr/bin/env elixir

# Example script that uses the OpenCode Elixir SDK to:
# 1. Create an opencode server and client instance
# 2. Create a session
# 3. Send itself in the prompt asking to identify any errors
#
# To run this script:
#   mix run examples/self_analysis.exs
#
# Prerequisites:
#   - opencode CLI must be installed and available in PATH
#   - The opencode-sdk-elixir package must be compiled (mix deps.get && mix compile)

require Logger

# Ensure proper cleanup on exit
defmodule SelfAnalysis do
  # Configuration constants
  @default_port_start 4096
  @default_port_end 5000
  @request_timeout_ms :infinity
  def run do
    # Read the contents of this script itself
    script_path = __ENV__.file

    case File.read(script_path) do
      {:ok, script_content} ->
        execute_analysis(script_path, script_content)

      {:error, reason} ->
        IO.puts("Error reading script: #{inspect(reason)}")
        System.halt(1)
    end
  end

  defp execute_analysis(script_path, script_content) do
    IO.puts("=" |> String.duplicate(60))
    IO.puts("OpenCode Elixir SDK Example: Self-Analysis Script")
    IO.puts("=" |> String.duplicate(60))
    IO.puts("\nThis script will:")
    IO.puts("  1. Start an OpenCode server")
    IO.puts("  2. Create a session")
    IO.puts("  3. Send its own code to identify potential errors")
    IO.puts("\nStarting...\n")

    # Find available port
    port = find_available_port(@default_port_start, @default_port_end)

    # Step 1: Create server and client
    IO.puts("Step 1: Starting OpenCode server on port #{port}...")

    case OpenCode.create(port: port) do
      {:ok, %{client: client, server: server}} ->
        try do
          IO.puts("  ✓ Server started successfully at: #{server.url}")

          # Verify server health
          case OpenCode.Generated.Operations.global_health(client) do
            {:ok, _} ->
              IO.puts("  ✓ Server health check passed")
              process_session(client, server, script_path, script_content)

            {:error, reason} ->
              IO.puts("  ✗ Health check failed: #{inspect(reason)}")
          end
        after
          # Ensure cleanup happens even if errors occur
          IO.puts("\n" <> String.duplicate("-", 50))
          IO.puts("Step 4: Cleaning up...")
          OpenCode.close(%{server: server})
          IO.puts("  ✓ Server stopped")
        end

      {:error, reason} ->
        IO.puts("  ✗ Failed to start server: #{inspect(reason)}")
        System.halt(1)
    end
  end

  defp process_session(client, _server, script_path, script_content) do
    # Step 2: Create a session
    IO.puts("\nStep 2: Creating session...")

    session_body = %{
      name: "self-analysis-session",
      description: "Session for analyzing this Elixir script for errors"
    }

    case OpenCode.Generated.Operations.session_create(session_body, client) do
      {:ok, session} ->
        session_id = session["id"]
        IO.puts("  ✓ Session created with ID: #{session_id}")
        IO.puts("  ✓ Session slug: #{session["slug"]}")

        send_analysis_message(client, session_id, script_path, script_content)

      {:error, reason} ->
        IO.puts("  ✗ Failed to create session: #{inspect(reason)}")
    end
  end

  defp send_analysis_message(client, session_id, script_path, script_content) do
    # Step 3: Send message with script content asking for error analysis
    IO.puts("\nStep 3: Sending script for error analysis...")
    IO.puts("  Script path: #{script_path}")
    IO.puts("  Script size: #{byte_size(script_content)} bytes\n")

    prompt_text = build_prompt(script_content)

    message_body = %{
      parts: [
        %{
          type: "text",
          text: prompt_text
        }
      ]
    }

    IO.puts("  Sending prompt and getting response...")
    IO.puts("  " <> String.duplicate("-", 50) <> "\n")

    client_with_timeout = Keyword.merge(client, timeout: @request_timeout_ms)

    case OpenCode.Generated.Operations.session_prompt(
           session_id,
           message_body,
           client_with_timeout
         ) do
      {:ok, response} ->
        display_response(response)
        IO.puts("  ✓ Session completed successfully")

      {:error, reason} ->
        IO.puts("  ✗ Failed to get response: #{inspect(reason)}")
    end
  end

  defp build_prompt(script_content) do
    """
    Please analyze the following Elixir script for any errors, bugs, or potential improvements.

    This is the source code of the script that is currently running:

    ```elixir
    #{script_content}
    ```

    Please identify:
    1. Any syntax errors
    2. Any logical errors or bugs
    3. Any potential runtime issues
    4. Any code style improvements
    5. Any best practices that could be followed

    Provide a brief summary of the code analysis.
    """
  end

  defp display_response(response) do
    IO.puts("\n  Response from OpenCode:")
    IO.puts("  " <> String.duplicate("-", 50))

    # Debug: Show available keys in response
    IO.puts("  Debug - Response keys: #{Map.keys(response) |> Enum.join(", ")}")

    info = response["info"] || %{}

    # Debug: Show available keys in info
    IO.puts("  Debug - Info keys: #{Map.keys(info) |> Enum.join(", ")}")

    # Handle both snake_case and camelCase keys
    session_id = info["session_id"] || info["sessionId"] || "N/A"
    status = info["status"] || info["messageStatus"] || "N/A"

    IO.puts("  Message ID: #{info["id"] || "N/A"}")
    IO.puts("  Session ID: #{session_id}")
    IO.puts("  Status: #{status}")
    IO.puts("\n  Content:")

    parts = response["parts"] || []

    Enum.each(parts, fn part ->
      case part do
        %{"type" => "text", "text" => text} ->
          IO.puts("\n  #{text}")

        %{"type" => "reasoning", "text" => text} ->
          IO.puts("\n  [Reasoning: #{text}]")

        %{"type" => "step_start"} ->
          IO.puts("\n  [Step started]")

        %{"type" => "step_finish"} ->
          IO.puts("\n  [Step finished]")

        _ ->
          :ok
      end
    end)
  end

  # Find an available port by trying to bind to it
  defp find_available_port(start_port, end_port) do
    start_port..end_port
    |> Enum.find(fn port ->
      case :gen_tcp.listen(port, [:binary, active: false, reuseaddr: true]) do
        {:ok, sock} ->
          :gen_tcp.close(sock)
          true

        {:error, _} ->
          false
      end
    end) || raise "No available ports found in range #{start_port}-#{end_port}"
  end
end

# Run the analysis
SelfAnalysis.run()

IO.puts("=" |> String.duplicate(60))
IO.puts("Analysis complete!")
IO.puts("=" |> String.duplicate(60))
