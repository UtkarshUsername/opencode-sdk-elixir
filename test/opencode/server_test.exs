defmodule OpenCode.ServerTest do
  use ExUnit.Case, async: false

  @moduletag skip: is_nil(System.find_executable("opencode"))

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

          File.rm_rf!(base)
        end)

        {:ok, env: env}
    end
  end

  test "managed server supports health, config, sessions, errors, and events" do
    port = free_port()

    {:ok, server} =
      OpenCode.create_server(hostname: "127.0.0.1", port: port, timeout: 20_000)

    try do
      assert server.url == "http://127.0.0.1:#{port}"

      client = OpenCode.create_client(base_url: server.url)
      assert {:ok, %{"healthy" => true}} = OpenCode.Generated.Operations.global_health(client)
      assert {:ok, config} = OpenCode.Generated.Operations.config_get(client)
      assert is_map(config)
      assert {:ok, projects} = OpenCode.Generated.Operations.project_list(client)
      assert is_list(projects)

      assert {:ok, session} = OpenCode.Generated.Operations.session_create(%{title: "SDK integration"}, client)
      session_id = session["id"]
      assert is_binary(session_id)

      try do
        assert {:ok, %{"id" => ^session_id}} = OpenCode.Generated.Session.session_get(session_id, client)

        assert {:ok, sessions} =
                 OpenCode.Generated.Operations.session_list(Keyword.merge(client, search: "SDK integration", limit: 5))

        assert Enum.any?(sessions, &(&1["id"] == session_id))

        assert {:ok, %{"title" => "Updated SDK session"}} =
                 OpenCode.Generated.Operations.session_update(session_id, %{title: "Updated SDK session"}, client)

        assert {:ok, %{"info" => %{"role" => "user"}, "parts" => parts}} =
                 OpenCode.Generated.Operations.session_prompt(
                   session_id,
                   %{
                     noReply: true,
                     model: %{providerID: "anthropic", modelID: "claude-sonnet-4-20250514"},
                     parts: [%{type: "text", text: "SDK integration message"}]
                   },
                   client
                 )

        assert Enum.any?(parts, &(&1["type"] == "text" && &1["text"] == "SDK integration message"))
        assert {:ok, messages} = OpenCode.Generated.Operations.session_messages(session_id, client)
        assert Enum.any?(messages, &(&1["info"]["role"] == "user"))

        assert {:ok, %{stream: stream}} = OpenCode.Generated.Operations.event_subscribe(client)
        task = Task.async(fn -> Enum.take(stream, 1) end)
        assert [%{"type" => "server.connected"}] = Task.await(task, 5_000)
      after
        assert {:ok, true} = OpenCode.Generated.Operations.session_delete(session_id, client)
      end

      assert {:error, {404, _}} = OpenCode.Generated.Session.session_get(session_id, client)
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
