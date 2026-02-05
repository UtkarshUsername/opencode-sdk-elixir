import Config

# OpenAPI Generator Configuration
# Generates Elixir client from OpenCode CLI OpenAPI spec
config :oapi_generator,
  opencode: [
    # Output location for generated files
    output: [
      location: "lib/opencode/generated",
      base_module: OpenCode.Generated,
      default_client: OpenCode.Client,
      field_casing: :snake
    ]
  ]
