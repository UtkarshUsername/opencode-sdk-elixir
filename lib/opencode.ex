defmodule OpenCode do
  @moduledoc """
  Unofficial OpenCode SDK for Elixir.

  Mirrors the JS SDK behavior. Use `create/1` to start a server and get a
  client, or `create_client/1` to connect to an existing server.

  The API surface is generated from OpenAPI and lives in
  `OpenCode.Generated.Operations`.

  ## Example

      {:ok, %{client: client, server: server}} = OpenCode.create()
      {:ok, health} = OpenCode.Generated.Operations.global_health(client)
      OpenCode.close(%{server: server})
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
