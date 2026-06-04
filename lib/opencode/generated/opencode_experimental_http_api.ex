defmodule OpenCode.Generated.OpencodeExperimentalHttpApi do
  @moduledoc """
  Provides API endpoints related to opencode experimental http api
  """

  @default_client OpenCode.Client

  @type v2_agent_list_200_json_resp :: %{
          data: [OpenCode.Generated.AgentV2Info.t()],
          location: OpenCode.Generated.LocationInfo.t()
        }

  @doc """
  List v2 agents

  Retrieve currently registered v2 agents.

  ## Options

    * `location`

  """
  @spec v2_agent_list(opts :: keyword) ::
          {:ok, OpenCode.Generated.OpencodeExperimentalHttpApi.v2_agent_list_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_agent_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.OpencodeExperimentalHttpApi, :v2_agent_list},
      url: "/api/agent",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.OpencodeExperimentalHttpApi, :v2_agent_list_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @type v2_health_get_200_json_resp :: %{healthy: true}

  @doc """
  Check v2 server health

  Check whether the v2 API server is ready to accept requests.
  """
  @spec v2_health_get(opts :: keyword) ::
          {:ok, OpenCode.Generated.OpencodeExperimentalHttpApi.v2_health_get_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_health_get(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {OpenCode.Generated.OpencodeExperimentalHttpApi, :v2_health_get},
      url: "/api/health",
      method: :get,
      response: [
        {200, {OpenCode.Generated.OpencodeExperimentalHttpApi, :v2_health_get_200_json_resp}},
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
