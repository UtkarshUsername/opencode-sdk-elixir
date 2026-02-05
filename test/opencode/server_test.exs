defmodule OpenCode.ServerTest do
  use ExUnit.Case, async: false

  setup do
    case System.find_executable("opencode") do
      nil ->
        {:skip, "opencode executable not found"}

      _ ->
        base = Path.join(System.tmp_dir!(), "opencode-elixir-#{System.unique_integer([:positive])}")

        xdg = %{
          "XDG_DATA_HOME" => Path.join(base, "share"),
          "XDG_CACHE_HOME" => Path.join(base, "cache"),
          "XDG_CONFIG_HOME" => Path.join(base, "config"),
          "XDG_STATE_HOME" => Path.join(base, "state"),
          "OPENCODE_TEST_HOME" => Path.join(base, "home")
        }

        Enum.each(xdg, fn {_key, dir} -> File.mkdir_p!(dir) end)

        env =
          Map.merge(xdg, %{
            "OPENCODE_DISABLE_MODELS_FETCH" => "true",
            "OPENCODE_DISABLE_SHARE" => "true",
            "OPENCODE_DISABLE_DEFAULT_PLUGINS" => "true",
            "OPENCODE_DISABLE_LSP_DOWNLOAD" => "true",
            "OPENCODE_EXPERIMENTAL_DISABLE_FILEWATCHER" => "true"
          })

        original =
          Enum.reduce(env, %{}, fn {key, _}, acc ->
            Map.put(acc, key, System.get_env(key))
          end)

        Enum.each(env, fn {key, val} -> System.put_env(key, val) end)

        on_exit(fn ->
          Enum.each(original, fn {key, val} ->
            case val do
              nil -> System.delete_env(key)
              _ -> System.put_env(key, val)
            end
          end)
        end)

        {:ok, env: env}
    end
  end

  test "create_server starts and is healthy" do
    port = free_port()

    {:ok, server} =
      OpenCode.create_server(hostname: "127.0.0.1", port: port, timeout: 20_000)

    try do
      assert server.url == "http://127.0.0.1:#{port}"

      client = OpenCode.create_client(base_url: server.url)
      assert {:ok, %{"healthy" => true}} = OpenCode.Generated.Operations.global_health(client)
    after
      OpenCode.close(%{server: server})
    end
  end

  defp free_port do
    {:ok, socket} = :gen_tcp.listen(0, [:binary, active: false])
    {:ok, {_, port}} = :inet.sockname(socket)
    :gen_tcp.close(socket)
    port
  end
end
