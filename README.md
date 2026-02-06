# OpenCode SDK for Elixir

An unofficial Elixir SDK for OpenCode that mirrors the JS SDK (`@opencode-ai/sdk`).
The API surface is generated from the OpenCode OpenAPI spec.

hex.pm link: https://hex.pm/packages/opencode_sdk/

## Installation

Add `opencode` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:opencode, "~> 0.1.0"}
  ]
end
```

## Create Server + Client

```elixir
{:ok, %{client: client, server: server}} = OpenCode.create()

{:ok, health} = OpenCode.Generated.Operations.global_health(client)

OpenCode.close(%{server: server})
```

### Options

`OpenCode.create/1` forwards options to `OpenCode.create_server/1`.

- `:hostname` - Server hostname (default `"127.0.0.1"`)
- `:port` - Server port (default `4096`)
- `:timeout` - Startup timeout in ms (default `5000`)
- `:config` - Config map passed via `OPENCODE_CONFIG_CONTENT`

## Client Only

```elixir
client = OpenCode.create_client(base_url: "http://localhost:4096")

{:ok, projects} = OpenCode.Generated.Operations.project_list(client)
```

### Client Options

- `:base_url` - Server URL (default `"http://127.0.0.1:4096"`)
- `:directory` - Optional project directory header
- `:headers` - Extra headers (map or keyword list)
- `:timeout` - Request timeout (default `:infinity`)

## TUI

```elixir
{:ok, tui} = OpenCode.create_tui(project: "/path/to/project")
OpenCode.Tui.close(tui)
```

## Events

```elixir
{:ok, %{stream: stream}} = OpenCode.Generated.Operations.event_subscribe(client)

Enum.each(stream, fn event ->
  IO.inspect(event)
end)
```

## Types

All OpenAPI types are generated under `OpenCode.Generated.*`.

```elixir
# Example type module
OpenCode.Generated.Session
```

## Regenerating

The OpenAPI spec lives at `priv/opencode_openapi.json`.
To regenerate the client:

```bash
mix opencode.gen.client --spec priv/opencode_openapi.json
```

# Note
This is not affiliated with or built by the OpenCode team.
