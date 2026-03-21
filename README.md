# OpenCode SDK for Elixir

An unofficial Elixir SDK for OpenCode that mirrors the JS SDK (`@opencode-ai/sdk`).
The client and types are generated from the OpenCode OpenAPI spec.

hex.pm link: https://hex.pm/packages/opencode_sdk/

## Installation

Add `opencode_sdk` to your dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:opencode_sdk, "~> 0.1.23"}
  ]
end
```

## Quickstart

Start an OpenCode server and get a connected client:

```elixir
{:ok, %{client: client, server: server}} = OpenCode.create()

{:ok, health} = OpenCode.Generated.Operations.global_health(client)
IO.inspect(health, label: "health")
# => %{"healthy" => true, "version" => "1.1.53"}

OpenCode.close(%{server: server})
```

Connect to an existing server:

```elixir
client = OpenCode.create_client(base_url: "http://127.0.0.1:4096")
{:ok, projects} = OpenCode.Generated.Operations.project_list(client)
```

## Create API

### `OpenCode.create/1` options

`OpenCode.create/1` forwards to `OpenCode.create_server/1` and returns `%{client, server}`.

| Option | Type | Description | Default |
| --- | --- | --- | --- |
| `:hostname` | `String.t()` | Server hostname | `"127.0.0.1"` |
| `:port` | `integer()` | Server port | `4096` |
| `:timeout` | `integer()` | Startup timeout in ms | `5000` |
| `:config` | `map()` | Config passed via `OPENCODE_CONFIG_CONTENT` | `%{}` |

### `OpenCode.create_client/1` options

| Option | Type | Description | Default |
| --- | --- | --- | --- |
| `:base_url` | `String.t()` | OpenCode server URL | `"http://127.0.0.1:4096"` |
| `:directory` | `String.t()` | Project directory sent via `x-opencode-directory` | `nil` |
| `:headers` | `map() \| keyword()` | Extra HTTP headers | `[]` |
| `:timeout` | `integer() \| :infinity` | Request timeout | `:infinity` |

### Configuration

Pass a `:config` map to override settings. The server still reads your `opencode.json`, but inline config takes precedence:

```elixir
{:ok, %{client: client, server: server}} =
  OpenCode.create(config: %{model: "opencode/big-pickle"})
```

## API Reference

All operations live in `OpenCode.Generated.Operations`. The `client` keyword list is always the last argument.

### Global

| Function | Description | Response |
| --- | --- | --- |
| `global_health(client)` | Check server health and version | `%{"healthy" => true, "version" => "..."}` |
| `global_dispose(client)` | Shut down the server | `boolean` |
| `global_config_get(client)` | Get global config | `Config` |
| `global_config_update(body, client)` | Update global config | `Config` |

```elixir
{:ok, health} = Operations.global_health(client)
IO.puts(health["version"])
```

### Sessions

| Function | Description | Response |
| --- | --- | --- |
| `session_create(body, client)` | Create a new session | `Session` |
| `session_list(client)` | List all sessions | `[Session]` |
| `Session.session_get(id, client)` | Get a session by ID | `Session` |
| `Session.session_children(id, client)` | List child sessions | `[Session]` |
| `session_delete(id, client)` | Delete a session | `boolean` |
| `session_update(id, body, client)` | Update session properties | `Session` |
| `session_abort(id, client)` | Abort a running session | `boolean` |
| `session_share(id, client)` | Share a session | `Session` |
| `session_unshare(id, client)` | Unshare a session | `Session` |
| `session_summarize(id, body, client)` | Summarize a session | `boolean` |

```elixir
# Create a session
{:ok, session} = Operations.session_create(%{title: "My session"}, client)

# List recent sessions (with optional filters)
{:ok, sessions} = Operations.session_list(Keyword.merge(client, limit: 10, search: "my"))

# Get a specific session
{:ok, session} = OpenCode.Generated.Session.session_get("session-id", client)

# Delete a session
{:ok, true} = Operations.session_delete("session-id", client)
```

### Messages and prompts

| Function | Description | Response |
| --- | --- | --- |
| `session_prompt(id, body, client)` | Send a prompt, get AI response | `%{"info" => AssistantMessage, "parts" => [Part]}` |
| `session_prompt_async(id, body, client)` | Send a prompt asynchronously | `:ok` |
| `session_messages(id, client)` | List messages in a session | `[%{"info" => Message, "parts" => [Part]}]` |
| `session_message(id, msg_id, client)` | Get a specific message | `%{"info" => Message, "parts" => [Part]}` |
| `session_command(id, body, client)` | Send a command to a session | `%{"info" => AssistantMessage, "parts" => [Part]}` |
| `session_shell(id, body, client)` | Run a shell command | `AssistantMessage` |
| `session_diff(id, client)` | Get file diffs from a session | `[FileDiff]` |
| `session_revert(id, body, client)` | Revert a message | `Session` |
| `session_unrevert(id, client)` | Restore reverted messages | `Session` |

```elixir
# Send a prompt
{:ok, result} =
  Operations.session_prompt(
    session["id"],
    %{parts: [%{type: "text", text: "Summarize this project in 3 bullets."}]},
    client
  )

# Extract text from the response
for %{"type" => "text", "text" => text} <- result["parts"] do
  IO.puts(text)
end

# Access token usage from the response info
info = result["info"]
IO.inspect(info["tokens"])
# => %{"input" => 1234, "output" => 567, ...}

# Specify a model in the prompt
{:ok, result} =
  Operations.session_prompt(
    session["id"],
    %{
      model: %{providerID: "opencode", modelID: "big-pickle"},
      parts: [%{type: "text", text: "Hello!"}]
    },
    client
  )

# Inject context without triggering AI response
{:ok, _} =
  Operations.session_prompt(
    session["id"],
    %{
      noReply: true,
      parts: [%{type: "text", text: "You are a helpful assistant."}]
    },
    client
  )
```

#### Response structure

`session_prompt/3` returns `{:ok, %{"info" => info, "parts" => parts}}`:

- **`info`** — assistant message metadata: `"id"`, `"role"`, `"model_id"`, `"provider_id"`, `"cost"`, `"tokens"`, `"time"`.
- **`parts`** — list of part maps, each with a `"type"` field:

| Part type | Key fields | Description |
| --- | --- | --- |
| `"text"` | `"text"` | The assistant's text response |
| `"tool-invocation"` | `"name"`, `"args"`, `"state"`, `"result"` | A tool call and its result |
| `"reasoning"` | `"text"` | Model reasoning/thinking |
| `"step-start"` | — | Start of a multi-step sequence |
| `"step-finish"` | — | End of a multi-step sequence |
| `"file"` | `"filename"`, `"url"`, `"mime"`, `"source"` | File attachment |
| `"patch"` | `"files"`, `"hash"` | File diff/patch |

### App

| Function | Description | Response |
| --- | --- | --- |
| `app_agents(client)` | List available agents | `[Agent]` |
| `app_log(body, client)` | Write a log entry | `boolean` |
| `app_skills(client)` | List available skills | `[Skill]` |

```elixir
{:ok, agents} = Operations.app_agents(client)

Operations.app_log(
  %{service: "my-app", level: "info", message: "Operation completed"},
  client
)
```

### Files and search

| Function | Description | Response |
| --- | --- | --- |
| `file_list(client)` | List files in a path | `[FileNode]` |
| `file_read(client)` | Read file content | `FileContent` |
| `file_status(client)` | Get git status of files | `[File]` |
| `find_files(client)` | Search files by name/pattern | `[String]` |
| `find_text(client)` | Search text with ripgrep | `[Match]` |
| `find_symbols(client)` | Search workspace symbols (LSP) | `[Symbol]` |
| `path_get(client)` | Get current path info | `Path` |

```elixir
# Search for text across the project
{:ok, results} = Operations.find_text(Keyword.merge(client, pattern: "defmodule"))

# Find files by pattern
{:ok, files} = Operations.find_files(Keyword.merge(client, query: "*.ex", type: "file"))

# Read a specific file
{:ok, content} = Operations.file_read(Keyword.merge(client, path: "lib/my_app.ex"))

# Get git status
{:ok, status} = Operations.file_status(client)
```

### Config and providers

| Function | Description | Response |
| --- | --- | --- |
| `config_get(client)` | Get config | `Config` |
| `config_update(body, client)` | Update config | `Config` |
| `config_providers(client)` | List providers and default models | `%{"providers" => [...], "default" => %{...}}` |
| `provider_list(client)` | List providers | `[Provider]` |
| `provider_auth(client)` | Get provider auth status | — |

```elixir
{:ok, config} = Operations.config_get(client)
{:ok, %{"providers" => providers, "default" => defaults}} = Operations.config_providers(client)
```

### Auth

| Function | Description | Response |
| --- | --- | --- |
| `auth_set(providerID, body, client)` | Set auth credentials | `boolean` |
| `auth_remove(providerID, client)` | Remove auth credentials | `boolean` |

```elixir
Operations.auth_set("anthropic", %{type: "api", key: "sk-..."}, client)
```

### Events (SSE)

| Function | Description | Response |
| --- | --- | --- |
| `event_subscribe(client)` | Subscribe to real-time events | `%{stream: Stream}` |
| `global_event(client)` | Subscribe to global events | `%{stream: Stream}` |

```elixir
{:ok, %{stream: stream}} = Operations.event_subscribe(client)

Enum.each(stream, fn event ->
  IO.inspect(event, label: "event")
end)
```

### Permissions and questions

| Function | Description | Response |
| --- | --- | --- |
| `permission_list(client)` | List pending permissions | `[Permission]` |
| `permission_reply(id, body, client)` | Reply to a permission request | `boolean` |
| `question_list(client)` | List pending questions | `[Question]` |
| `question_reply(id, body, client)` | Reply to a question | `boolean` |
| `question_reject(id, client)` | Reject a question | `boolean` |

### MCP

| Function | Description | Response |
| --- | --- | --- |
| `mcp_status(client)` | Get MCP server status | `McpStatus` |
| `mcp_add(body, client)` | Add an MCP server | — |
| `mcp_connect(name, client)` | Connect to an MCP server | — |
| `mcp_disconnect(name, client)` | Disconnect from an MCP server | — |

```elixir
{:ok, mcp} = Operations.mcp_status(client)
```

### PTY

| Function | Description | Response |
| --- | --- | --- |
| `pty_list(client)` | List PTY sessions | `[Pty]` |
| `pty_create(body, client)` | Create a PTY session | `Pty` |
| `pty_get(id, client)` | Get a PTY session | `Pty` |
| `pty_remove(id, client)` | Remove a PTY session | `boolean` |

### TUI

| Function | Description | Response |
| --- | --- | --- |
| `tui_append_prompt(body, client)` | Append text to the prompt | `boolean` |
| `tui_submit_prompt(client)` | Submit the current prompt | `boolean` |
| `tui_clear_prompt(client)` | Clear the prompt | `boolean` |
| `tui_execute_command(body, client)` | Execute a command | `boolean` |
| `tui_show_toast(body, client)` | Show a toast notification | `boolean` |
| `tui_open_help(client)` | Open help dialog | `boolean` |
| `tui_open_sessions(client)` | Open session selector | `boolean` |
| `tui_open_models(client)` | Open model selector | `boolean` |
| `tui_open_themes(client)` | Open theme selector | `boolean` |

```elixir
Operations.tui_append_prompt(%{text: "Add this to prompt"}, client)
Operations.tui_show_toast(%{message: "Done!", variant: "success"}, client)
```

### TUI process lifecycle

```elixir
{:ok, tui} = OpenCode.create_tui(project: "/path/to/project")
OpenCode.Tui.close(tui)
```

## Error handling

All operations return `{:ok, result}` on success. Failures return `{:error, {status, body}}` for HTTP errors or `{:error, reason}` for connection issues:

```elixir
case Operations.session_prompt(session_id, body, client) do
  {:ok, result} ->
    result

  {:error, {404, _body}} ->
    IO.puts("Session not found")

  {:error, {400, body}} ->
    IO.puts("Bad request: #{inspect(body)}")

  {:error, %Req.TransportError{reason: :econnrefused}} ->
    IO.puts("Cannot connect to server")
end
```

## Examples

See the `examples/` directory:

- **[`hello.exs`](examples/hello.exs)** — minimal example: start server, create session, send one prompt, print response.
- **[`chat.exs`](examples/chat.exs)** — interactive CLI chat REPL with session management, slash commands, and token usage display.

Run an example:

```bash
mix run examples/hello.exs
mix run examples/chat.exs
```

## Types and Docs

All OpenAPI types are generated under `OpenCode.Generated.*` (for example, `OpenCode.Generated.Session`).

API functions and types are documented in generated module docs, primarily:

- `OpenCode`
- `OpenCode.Generated.Operations`
- `OpenCode.Generated.*` type modules

## Regenerating

The OpenAPI spec is at `priv/opencode_openapi.json`.
Regenerate the client with:

```bash
mix opencode.gen.client --spec priv/opencode_openapi.json
```

## Note

This project is unofficial and is not affiliated with the OpenCode team.
