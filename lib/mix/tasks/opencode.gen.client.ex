defmodule Mix.Tasks.Opencode.Gen.Client do
  @moduledoc """
  Generates Elixir client code from OpenCode CLI OpenAPI specification.

  This task:
  1. Fetches the OpenAPI spec from the OpenCode CLI (or uses a local spec file)
  2. Generates Elixir client code using oapi_generator

  ## Usage

      mix opencode.gen.client

  ## Options

      --spec PATH    Path to local OpenAPI spec JSON file (optional)

  ## Examples

      # Generate from running OpenCode CLI
      mix opencode.gen.client

      # Generate from local spec file
      mix opencode.gen.client --spec priv/opencode_openapi.json

  """

  use Mix.Task

  require Logger

  @spec_file "priv/opencode_openapi.json"

  @impl Mix.Task
  def run(args) do
    {opts, _, _} =
      OptionParser.parse(args,
        switches: [spec: :string],
        aliases: [s: :spec]
      )

    spec_path = opts[:spec] || fetch_spec_from_cli()

    unless File.exists?(spec_path) do
      Mix.raise("""
      OpenAPI spec not found at: #{spec_path}

      Please either:
      1. Start the OpenCode CLI and run: mix opencode.gen.client
      2. Provide a local spec file: mix opencode.gen.client --spec path/to/spec.json
      """)
    end

    Mix.shell().info("🔧 Generating OpenCode client from: #{spec_path}")
    Mix.shell().info("")

    # Run the OpenAPI generator using the opencode profile
    Mix.Task.run("api.gen", ["opencode", spec_path])

    Mix.shell().info("")
    Mix.shell().info("✅ Client generation complete!")
    Mix.shell().info("")
    Mix.shell().info("Generated files in: lib/opencode/generated/")
    Mix.shell().info("")
    Mix.shell().info("Next steps:")
    Mix.shell().info("  1. Review the generated code")
    Mix.shell().info("  2. Run: mix compile")
    Mix.shell().info("  3. Update your code to use the new client module")

    :ok
  end

  defp fetch_spec_from_cli do
    # Check if opencode CLI is available in common locations
    cli_paths =
      [
        # From system PATH
        System.find_executable("opencode"),
        # Local development
        "./opencode-cli"
      ]
      |> Enum.reject(&is_nil/1)
      |> Enum.filter(&File.exists?/1)

    case cli_paths do
      [cli_path | _] ->
        Mix.shell().info("✓ Found OpenCode CLI at: #{cli_path}")

        # Create priv directory if needed
        File.mkdir_p!(Path.dirname(@spec_file))

        # Generate OpenAPI spec from CLI
        case System.cmd(cli_path, ["dev", "generate"], stderr_to_stdout: true) do
          {output, 0} ->
            File.write!(@spec_file, output)
            Mix.shell().info("✓ Fetched OpenAPI spec from CLI")
            @spec_file

          {error, _} ->
            Mix.raise("""
            Failed to generate OpenAPI spec from CLI:
            #{error}

            Make sure the OpenCode CLI is running or provide a local spec file:
            mix opencode.gen.client --spec path/to/spec.json
            """)
        end

      [] ->
        # Try HTTP endpoint if CLI not found
        fetch_spec_from_http()
    end
  end

  defp fetch_spec_from_http do
    base_url = System.get_env("OPENCODE_BASE_URL", "http://127.0.0.1:3000")
    url = "#{base_url}/openapi.json"

    Mix.shell().info("CLI not found, trying HTTP endpoint: #{url}")

    case Req.get(url, receive_timeout: 5000) do
      {:ok, %{status: 200, body: body}} when is_map(body) ->
        File.mkdir_p!(Path.dirname(@spec_file))
        File.write!(@spec_file, Jason.encode!(body))
        Mix.shell().info("✓ Fetched OpenAPI spec from HTTP endpoint")
        @spec_file

      {:ok, %{status: status}} ->
        Mix.raise("""
        HTTP endpoint returned status #{status}

        Make sure OpenCode CLI is running at #{base_url}
        or provide a local spec file:
        mix opencode.gen.client --spec path/to/spec.json
        """)

      {:error, error} ->
        Mix.raise("""
        Failed to fetch OpenAPI spec: #{inspect(error)}

        Please either:
        1. Start the OpenCode CLI and ensure it's accessible
        2. Provide a local spec file: mix opencode.gen.client --spec path/to/spec.json
        """)
    end
  end
end
