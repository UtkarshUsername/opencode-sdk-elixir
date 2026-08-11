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
  @generated_dir "lib/opencode/generated"

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

    # oapi_generator can omit @type definitions for nested typed maps whose
    # schemas are merged from multiple anyOf variants (they only appear as
    # `__fields__` clauses, which causes a compile error). Inject the missing
    # types so the generated code always compiles.
    fix_missing_types()

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

  defp fix_missing_types do
    @generated_dir
    |> Path.join("*.ex")
    |> Path.wildcard()
    |> Enum.each(&fix_missing_types(&1))
  end

  defp fix_missing_types(path) do
    source = File.read!(path)

    case Code.string_to_quoted(source, escape: false) do
      {:ok, ast} ->
        {type_names, field_names, bodies} = collect_types(ast)

        case Enum.sort(field_names -- type_names) do
          [] ->
            :ok

          missing ->
            new_source =
              Enum.reduce(missing, source, fn name, acc ->
                inject_type(acc, name, Map.fetch!(bodies, name))
              end)

            if new_source == source do
              Mix.shell().error("⚠️ Could not locate `__fields__` for #{inspect(missing)} in #{path}")
            else
              File.write!(path, new_source)
              Mix.shell().info("✨ Injected #{length(missing)} missing @type(s) into #{path}")
            end
        end

      {:error, error} ->
        Mix.shell().error("⚠️ Could not parse #{path} during typespec fixup: #{Exception.message(error)}")
    end
  end

  defp collect_types(ast) do
    {_ast, {types, fields, bodies}} =
      Macro.prewalk(ast, {[], [], %{}}, fn
        {:@, _, [{:type, _, [{:"::", _, [{name, _, nil}, _]}]}]} = node, {types, fields, bodies}
        when is_atom(name) ->
          {node, {[name | types], fields, bodies}}

        {:def, _, [{:__fields__, _, [name]}, body]} = node, {types, fields, bodies}
        when is_atom(name) ->
          {node, {types, [name | fields], Map.put(bodies, name, extract_fields(body))}}

        node, acc ->
          {node, acc}
      end)

    {types, fields, bodies}
  end

  defp extract_fields([{:do, body}]), do: extract_fields(body)
  defp extract_fields({:__block__, _, [{:"[]", _, fields}]}), do: fields
  defp extract_fields({:"[]", _, fields}), do: fields
  defp extract_fields(fields) when is_list(fields), do: fields
  defp extract_fields(_), do: []

  defp inject_type(source, name, fields) do
    block = render_type_block(name, fields)
    def_line = "  def __fields__(:#{name}) do"

    String.replace(source, def_line, block <> "\n" <> def_line, global: false)
  end

  defp render_type_block(name, fields) do
    body =
      fields
      |> Enum.map(&render_field/1)
      |> Enum.join(",\n")
      |> String.split("\n")
      |> Enum.join("\n          ")

    """
      @type #{name} :: %{
              #{body}
            }
    """
  end

  defp render_field({field, value}) when is_atom(field) do
    key =
      if String.match?(Atom.to_string(field), ~r/^[a-zA-Z_][a-zA-Z0-9_]*[?!]?$/) do
        Atom.to_string(field)
      else
        inspect(field)
      end

    "#{key}: #{render_type(value)}"
  end

  defp render_field({field, value}) when is_binary(field) do
    "#{inspect(field)}: #{render_type(value)}"
  end

  defp render_type(value) do
    # oapi_generator is a dev/test-only dependency, so this file must compile
    # without it. `struct/2` and `apply/3` only reference the generator at
    # runtime, which is safe because generation always runs with it loaded.
    state = struct(OpenAPI.Renderer.State, implementation: OpenAPI.Renderer)

    state
    |> then(&apply(OpenAPI.Renderer.Util, :to_type, [&1, value]))
    |> Macro.to_string()
  rescue
    _ -> "map"
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
