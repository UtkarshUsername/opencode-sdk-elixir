defmodule OpenCode do
  @moduledoc """
  Unofficial OpenCode SDK for Elixir.

  Mirrors the JS SDK behavior. Use `create/1` to start a managed server and get
  a client, or `create_client/1` to connect to an already-running server.

  ## Getting started

  **Managed server** — start an OpenCode server as a child process and obtain a
  connected client in one call:

      {:ok, %{client: client, server: server}} = OpenCode.create()

      # ... use client ...

      OpenCode.close(%{server: server})

  **Existing server** — connect to a server that is already running:

      client = OpenCode.create_client(base_url: "http://127.0.0.1:4096")

  Both approaches return a `client` keyword list that you pass as the `:client`
  option to every operation in `OpenCode.Generated.Operations`.

  ## Sessions and prompts

  Create a session, send a prompt, and extract the assistant's text:

      alias OpenCode.Generated.Operations

      {:ok, session} = Operations.session_create(%{title: "My session"}, client)

      {:ok, result} =
        Operations.session_prompt(
          session["id"],
          %{parts: [%{type: "text", text: "Hello!"}]},
          client
        )

      for %{"type" => "text", "text" => text} <- result["parts"] do
        IO.puts(text)
      end

  You can also specify a model in the prompt body:

      body = %{
        model: %{providerID: "anthropic", modelID: "claude-sonnet-4-20250514"},
        parts: [%{type: "text", text: "Summarize this project."}]
      }

  ## Response structure

  `session_prompt/3` returns `{:ok, result}` where `result` is a map with:

    * `"info"` — an assistant message map with metadata (role, model, tokens,
      cost, timing).
    * `"parts"` — a list of part maps. Each has a `"type"` field:

      | Type               | Description                              |
      | :----------------- | :--------------------------------------- |
      | `"text"`           | The assistant's text response            |
      | `"tool-invocation"`| A tool call (name, args, state, result)  |
      | `"reasoning"`      | Model reasoning/thinking                 |
      | `"step-start"`     | Start of a multi-step sequence           |
      | `"step-finish"`    | End of a multi-step sequence             |
      | `"file"`           | File content reference                   |
      | `"patch"`          | File diff/patch                          |

  ## Error handling

  All operations return `{:ok, result}` on success. Failures return
  `{:error, {status, body}}` for HTTP errors or `{:error, reason}` for
  connection issues:

      case Operations.session_prompt(session_id, body, client) do
        {:ok, result} ->
          result

        {:error, {404, _body}} ->
          IO.puts("Session not found")

        {:error, {400, body}} ->
          IO.puts("Bad request: \#{inspect(body)}")

        {:error, %Req.TransportError{reason: :econnrefused}} ->
          IO.puts("Cannot connect to server")
      end

  ## Configuration

  `create/1` accepts a `:config` map that is passed to the server as
  `OPENCODE_CONFIG_CONTENT`. Use it to override the model or log level:

      {:ok, %{client: client, server: server}} =
        OpenCode.create(config: %{model: "anthropic/claude-sonnet-4-20250514"})

  ## Full API reference

  See `OpenCode.Generated.Operations` for the complete list of endpoints
  (sessions, messages, permissions, events, and more).
  """

  alias OpenCode.Server
  alias OpenCode.Tui

  @default_base_url "http://127.0.0.1:4096"

  @spec create(keyword()) :: {:ok, %{client: keyword(), server: Server.t()}} | {:error, term()}
  def create(opts \\ []) do
    case Server.create(opts) do
      {:ok, server} ->
        client = create_client(base_url: server.url)
        {:ok, %{client: client, server: server}}

      {:error, reason} ->
        {:error, reason}
    end
  end

  @spec create_client(keyword()) :: keyword()
  def create_client(opts \\ []) do
    base = Keyword.get(opts, :base_url, @default_base_url)

    [client: OpenCode.Client, base_url: base]
    |> put_opt(:directory, opts[:directory])
    |> put_opt(:headers, opts[:headers])
    |> put_opt(:timeout, opts[:timeout])
  end

  @spec create_server(keyword()) :: {:ok, Server.t()} | {:error, term()}
  def create_server(opts \\ []), do: Server.create(opts)

  @spec create_tui(keyword()) :: {:ok, Tui.t()}
  def create_tui(opts \\ []), do: Tui.create(opts)

  @spec close(map()) :: :ok
  def close(%{server: server}), do: Server.close(server)
  def close(_), do: :ok

  defp put_opt(list, _key, nil), do: list
  defp put_opt(list, _key, []), do: list
  defp put_opt(list, key, val), do: Keyword.put(list, key, val)
end
