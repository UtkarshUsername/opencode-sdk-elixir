# OpenCode SDK for Elixir

An unofficial Elixir SDK for OpenCode that mirrors the JS SDK (`@opencode-ai/sdk`).
The client and types are generated from the OpenCode OpenAPI spec.

hex.pm link: https://hex.pm/packages/opencode_sdk/

## Installation

Add `opencode_sdk` to your dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:opencode_sdk, "~> 0.1.2"}
  ]
end
```

## Quickstart

Start an OpenCode server and get a connected client:

```elixir
{:ok, %{client: client, server: server}} = OpenCode.create()

{:ok, health} = OpenCode.Generated.Operations.global_health(client)
IO.inspect(health, label: "health")

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

## Common Workflows

### Sessions and prompts

```elixir
{:ok, session} =
  OpenCode.Generated.Operations.session_create(%{title: "SDK walkthrough"}, client)

{:ok, reply} =
  OpenCode.Generated.Operations.session_prompt(
    session.id,
    %{
      parts: [%{type: "text", text: "Summarize this project in 3 bullets."}]
    },
    client
  )

IO.inspect(reply.info)
```

### Real-time events (SSE)

```elixir
{:ok, %{stream: stream}} = OpenCode.Generated.Operations.event_subscribe(client)

Enum.each(stream, fn event ->
  IO.inspect(event.type, label: "event")
end)
```

### TUI process lifecycle

```elixir
{:ok, tui} = OpenCode.create_tui(project: "/path/to/project")
OpenCode.Tui.close(tui)
```

## Capability Guide

The generated operations module includes much more than sessions. Key groups:

- App: `app_agents/1`, `app_log/2`, `app_skills/1`
- Projects and config: `project_*`, `config_*`, `provider_*`
- Files and search: `file_*`, `find_*`, `path_get/1`
- Session control: `session_*`, `part_*`, `permission_*`, `question_*`
- MCP: `mcp_*`, `mcp_auth_*`
- PTY: `pty_*`
- TUI control endpoints: `tui_*`

Examples:

```elixir
# Permissions
{:ok, pending} = OpenCode.Generated.Operations.permission_list(client)

# Questions
{:ok, questions} = OpenCode.Generated.Operations.question_list(client)

# MCP status
{:ok, mcp} = OpenCode.Generated.Operations.mcp_status(client)

# PTY sessions
{:ok, ptys} = OpenCode.Generated.Operations.pty_list(client)

# Providers
{:ok, providers} = OpenCode.Generated.Operations.provider_list(client)
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
