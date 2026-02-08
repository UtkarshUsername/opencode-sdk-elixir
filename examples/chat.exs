#!/usr/bin/env elixir

# Interactive CLI chat REPL built on the OpenCode Elixir SDK.
#
# Starts a managed OpenCode server (auto-finds an available port),
# then drops into a REPL where you can manage sessions, send prompts,
# and view responses.
#
# To run:
#   mix run examples/chat.exs
#
# Or connect to an existing server:
#   mix run examples/chat.exs -- --url http://127.0.0.1:4096
#
# Prerequisites:
#   - opencode CLI must be installed and available in PATH
#   - mix deps.get && mix compile

defmodule Chat do
  alias OpenCode.Generated.Operations

  @request_timeout :infinity

  def run do
    {opts, _, _} =
      OptionParser.parse(System.argv(),
        strict: [url: :string, directory: :string, port: :integer],
        aliases: [u: :url, d: :directory, p: :port]
      )

    IO.puts("""

    ╔══════════════════════════════════════════╗
    ║        OpenCode Chat CLI (Elixir)        ║
    ║         Powered by opencode_sdk          ║
    ╚══════════════════════════════════════════╝

    Type /help for commands, or just type a message.
    """)

    {client, server} =
      case Keyword.get(opts, :url) do
        nil ->
          start_managed_server(opts)

        url ->
          client = OpenCode.create_client(base_url: url, directory: opts[:directory])

          case Operations.global_health(client) do
            {:ok, _} ->
              IO.puts("Connected to OpenCode at #{url}\n")
              {client, nil}

            {:error, reason} ->
              IO.puts(:stderr, "Failed to connect to #{url}: #{inspect(reason)}")
              System.halt(1)
          end
      end

    try do
      loop(client, nil)
    after
      if server, do: OpenCode.close(%{server: server})
    end
  end

  defp start_managed_server(opts) do
    port = Keyword.get(opts, :port) || find_available_port(4096, 5000)
    IO.puts("Starting OpenCode server on port #{port}...")

    case OpenCode.create(port: port) do
      {:ok, %{client: client, server: server}} ->
        IO.puts("Server running at #{server.url}\n")
        {client, server}

      {:error, reason} ->
        IO.puts(:stderr, "Failed to start server: #{inspect(reason)}")
        IO.puts(:stderr, "Make sure `opencode` CLI is installed and in PATH.")
        System.halt(1)
    end
  end

  defp find_available_port(start_port, end_port) do
    Enum.find(start_port..end_port, fn port ->
      case :gen_tcp.listen(port, [:binary, active: false, reuseaddr: true]) do
        {:ok, sock} ->
          :gen_tcp.close(sock)
          true

        {:error, _} ->
          false
      end
    end) || raise "No available ports in range #{start_port}-#{end_port}"
  end

  defp loop(client, session_id) do
    prompt =
      case session_id do
        nil -> "opencode> "
        id -> "opencode [#{String.slice(id, 0..7)}]> "
      end

    case IO.gets(prompt) do
      :eof ->
        IO.puts("\nGoodbye.")

      input ->
        input = String.trim(input)
        {client, session_id} = handle_input(input, client, session_id)
        loop(client, session_id)
    end
  end

  defp handle_input("", client, sid), do: {client, sid}

  defp handle_input("/help", client, sid) do
    IO.puts("""

    Commands:
      /new [title]       Create a new session
      /sessions          List recent sessions
      /use <id>          Switch to a session by ID (prefix match)
      /messages          Show messages in current session
      /info              Show current session info
      /health            Check server health
      /providers         List configured providers
      /files             List project files
      /diff              Show diff for current session
      /delete            Delete current session
      /quit              Exit

    Anything else is sent as a prompt to the current session.
    """)

    {client, sid}
  end

  defp handle_input("/quit", _client, _sid) do
    IO.puts("Goodbye.")
    System.halt(0)
  end

  defp handle_input("/health", client, sid) do
    case Operations.global_health(client) do
      {:ok, health} -> IO.puts("Health: #{inspect(health)}")
      {:error, err} -> IO.puts(:stderr, "Error: #{inspect(err)}")
    end

    {client, sid}
  end

  defp handle_input("/providers", client, sid) do
    case Operations.provider_list(client) do
      {:ok, providers} ->
        if providers == [] do
          IO.puts("No providers configured.")
        else
          Enum.each(providers, fn p ->
            name = Map.get(p, "name", Map.get(p, :name, "unknown"))
            id = Map.get(p, "id", Map.get(p, :id, ""))
            IO.puts("  #{id} — #{name}")
          end)
        end

      {:error, err} ->
        IO.puts(:stderr, "Error: #{inspect(err)}")
    end

    {client, sid}
  end

  defp handle_input("/files", client, sid) do
    case Operations.file_list(client) do
      {:ok, files} ->
        Enum.take(files, 20)
        |> Enum.each(fn f ->
          path = if is_map(f), do: Map.get(f, "path", Map.get(f, :path, inspect(f))), else: f
          IO.puts("  #{path}")
        end)

        count = length(files)
        if count > 20, do: IO.puts("  ... and #{count - 20} more")

      {:error, err} ->
        IO.puts(:stderr, "Error: #{inspect(err)}")
    end

    {client, sid}
  end

  defp handle_input("/new" <> rest, client, _sid) do
    title = String.trim(rest)
    title = if title == "", do: "CLI Session #{DateTime.utc_now()}", else: title

    case Operations.session_create(%{title: title}, client) do
      {:ok, session} ->
        id = field(session, :id)
        IO.puts("Created session: #{id}")
        IO.puts("Title: #{field(session, :title)}")
        {client, id}

      {:error, err} ->
        IO.puts(:stderr, "Error creating session: #{inspect(err)}")
        {client, nil}
    end
  end

  defp handle_input("/sessions", client, sid) do
    case Operations.session_list(client |> Keyword.put(:limit, 10)) do
      {:ok, sessions} ->
        if sessions == [] do
          IO.puts("No sessions found.")
        else
          Enum.each(sessions, fn s ->
            id = field(s, :id)
            title = field(s, :title) || "(untitled)"
            marker = if id == sid, do: " ←", else: ""
            IO.puts("  #{String.slice(id || "", 0..7)} | #{title}#{marker}")
          end)
        end

      {:error, err} ->
        IO.puts(:stderr, "Error: #{inspect(err)}")
    end

    {client, sid}
  end

  defp handle_input("/use " <> prefix, client, _sid) do
    prefix = String.trim(prefix)

    case Operations.session_list(client) do
      {:ok, sessions} ->
        match =
          Enum.find(sessions, fn s ->
            id = field(s, :id) || ""
            String.starts_with?(id, prefix)
          end)

        case match do
          nil ->
            IO.puts("No session found matching '#{prefix}'")
            {client, nil}

          s ->
            id = field(s, :id)
            IO.puts("Switched to session: #{id}")
            {client, id}
        end

      {:error, err} ->
        IO.puts(:stderr, "Error: #{inspect(err)}")
        {client, nil}
    end
  end

  defp handle_input("/messages", client, nil) do
    IO.puts("No session selected. Use /new or /use <id> first.")
    {client, nil}
  end

  defp handle_input("/messages", client, sid) do
    case Operations.session_messages(sid, client) do
      {:ok, messages} ->
        if is_list(messages) and messages == [] do
          IO.puts("No messages yet.")
        else
          display_messages(messages)
        end

      {:error, err} ->
        IO.puts(:stderr, "Error: #{inspect(err)}")
    end

    {client, sid}
  end

  defp handle_input("/info", client, nil) do
    IO.puts("No session selected. Use /new or /use <id> first.")
    {client, nil}
  end

  defp handle_input("/info", client, sid) do
    case Operations.session_list(client) do
      {:ok, sessions} ->
        session = Enum.find(sessions, fn s -> field(s, :id) == sid end)

        case session do
          nil ->
            IO.puts("Session #{sid} not found.")

          s ->
            IO.puts("  ID:    #{field(s, :id)}")
            IO.puts("  Title: #{field(s, :title)}")
        end

      {:error, err} ->
        IO.puts(:stderr, "Error: #{inspect(err)}")
    end

    {client, sid}
  end

  defp handle_input("/diff", client, nil) do
    IO.puts("No session selected.")
    {client, nil}
  end

  defp handle_input("/diff", client, sid) do
    case Operations.session_diff(sid, client) do
      {:ok, diffs} ->
        if diffs == [] do
          IO.puts("No file changes in this session.")
        else
          Enum.each(diffs, fn d ->
            path = field(d, :path) || field(d, :file) || "unknown"
            IO.puts("\n--- #{path} ---")
            IO.puts(field(d, :content) || field(d, :diff) || "")
          end)
        end

      {:error, err} ->
        IO.puts(:stderr, "Error: #{inspect(err)}")
    end

    {client, sid}
  end

  defp handle_input("/delete", client, nil) do
    IO.puts("No session selected.")
    {client, nil}
  end

  defp handle_input("/delete", client, sid) do
    case Operations.session_delete(sid, client) do
      {:ok, _} ->
        IO.puts("Deleted session #{sid}")
        {client, nil}

      {:error, err} ->
        IO.puts(:stderr, "Error: #{inspect(err)}")
        {client, sid}
    end
  end

  defp handle_input("/" <> _ = cmd, client, sid) do
    IO.puts("Unknown command: #{cmd}. Type /help for commands.")
    {client, sid}
  end

  defp handle_input(text, client, nil) do
    IO.puts("No session selected. Creating one...")
    {client, sid} = handle_input("/new", client, nil)
    if sid, do: send_prompt(client, sid, text), else: {client, nil}
  end

  defp handle_input(text, client, sid) do
    send_prompt(client, sid, text)
  end

  defp send_prompt(client, sid, text) do
    IO.puts("Thinking...")

    body = %{parts: [%{type: "text", text: text}]}
    client_with_timeout = Keyword.merge(client, timeout: @request_timeout)

    case Operations.session_prompt(sid, body, client_with_timeout) do
      {:ok, response} ->
        IO.puts("")
        display_response(response)
        {client, sid}

      {:error, err} ->
        IO.puts(:stderr, "\nError: #{inspect(err)}")
        {client, sid}
    end
  end

  defp display_response(response) when is_map(response) do
    parts = Map.get(response, "parts", Map.get(response, :parts, []))

    Enum.each(parts, fn part ->
      type = Map.get(part, "type", Map.get(part, :type, ""))

      case type do
        "text" ->
          text = Map.get(part, "content", Map.get(part, :content, ""))
          text = if text == "", do: Map.get(part, "text", Map.get(part, :text, "")), else: text
          IO.puts(text)

        "tool-invocation" ->
          name = Map.get(part, "name", Map.get(part, :name, "tool"))
          state = Map.get(part, "state", Map.get(part, :state, ""))
          IO.puts("  [tool: #{name} (#{state})]")

        "reasoning" ->
          IO.puts("  [reasoning...]")

        "step-start" ->
          IO.puts("  [step started]")

        "step-finish" ->
          IO.puts("  [step finished]")

        _ ->
          nil
      end
    end)

    info = Map.get(response, "info", Map.get(response, :info, nil))

    if info do
      tokens = Map.get(info, "tokens", Map.get(info, :tokens, nil))

      if tokens do
        input = Map.get(tokens, "input", Map.get(tokens, :input, 0))
        output = Map.get(tokens, "output", Map.get(tokens, :output, 0))
        IO.puts("\n  [tokens: #{input} in / #{output} out]")
      end
    end
  end

  defp display_response(other), do: IO.puts(inspect(other, pretty: true))

  defp display_messages(messages) when is_list(messages) do
    Enum.each(messages, fn msg ->
      role = field(msg, :role) || "unknown"
      parts = field(msg, :parts) || []

      IO.puts("\n  [#{role}]")

      Enum.each(List.wrap(parts), fn part ->
        type = field(part, :type) || ""

        case type do
          "text" ->
            text = field(part, :content) || field(part, :text) || ""
            IO.puts("  #{text}")

          _ ->
            IO.puts("  [#{type}]")
        end
      end)
    end)
  end

  defp display_messages(messages) when is_map(messages) do
    IO.puts(inspect(messages, pretty: true))
  end

  defp field(map, key) when is_map(map) do
    Map.get(map, key) || Map.get(map, to_string(key))
  end

  defp field(_, _), do: nil
end

Chat.run()
