defmodule OpenCode.Generated.OpencodeHttpApi do
  @moduledoc """
  Provides API endpoints related to opencode http api
  """

  @default_client OpenCode.Client

  @type v2_agent_list_200_json_resp :: %{
          data: [OpenCode.Generated.AgentV2Info.t()],
          location: OpenCode.Generated.LocationInfo.t()
        }

  @doc """
  List agents

  Retrieve currently registered agents.

  ## Options

    * `location`

  """
  @spec v2_agent_list(opts :: keyword) ::
          {:ok, OpenCode.Generated.OpencodeHttpApi.v2_agent_list_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_agent_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.OpencodeHttpApi, :v2_agent_list},
      url: "/api/agent",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.OpencodeHttpApi, :v2_agent_list_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Remove credential

  Remove a stored integration credential.

  ## Options

    * `location`

  """
  @spec v2_credential_remove(credentialID :: String.t(), opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_credential_remove(credentialID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [credentialID: credentialID],
      call: {OpenCode.Generated.OpencodeHttpApi, :v2_credential_remove},
      url: "/api/credential/#{credentialID}",
      method: :delete,
      query: query,
      response: [
        {204, :null},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update credential

  Update a stored credential label.

  ## Options

    * `location`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec v2_credential_update(credentialID :: String.t(), body :: map, opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_credential_update(credentialID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [credentialID: credentialID, body: body],
      call: {OpenCode.Generated.OpencodeHttpApi, :v2_credential_update},
      url: "/api/credential/#{credentialID}",
      body: body,
      method: :patch,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {204, :null},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @type v2_health_get_200_json_resp :: %{healthy: true}

  @doc """
  Check server health

  Check whether the API server is ready to accept requests.
  """
  @spec v2_health_get(opts :: keyword) ::
          {:ok, OpenCode.Generated.OpencodeHttpApi.v2_health_get_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_health_get(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {OpenCode.Generated.OpencodeHttpApi, :v2_health_get},
      url: "/api/health",
      method: :get,
      response: [
        {200, {OpenCode.Generated.OpencodeHttpApi, :v2_health_get_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get location

  Resolve the requested location or the server default location.

  ## Options

    * `location`

  """
  @spec v2_location_get(opts :: keyword) ::
          {:ok, OpenCode.Generated.LocationInfo.t()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_location_get(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.OpencodeHttpApi, :v2_location_get},
      url: "/api/location",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.LocationInfo, :t}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(:v2_agent_list_200_json_resp) do
    [
      data: [{OpenCode.Generated.AgentV2Info, :t}],
      location: {OpenCode.Generated.LocationInfo, :t}
    ]
  end

  def __fields__(:v2_health_get_200_json_resp) do
    [healthy: {:const, true}]
  end
end
