defmodule OpenCode.Generated.Connectors do
  @moduledoc """
  Provides API endpoints related to connectors
  """

  @default_client OpenCode.Client

  @doc """
  Connect with key

  Run a key authentication method and store the resulting credential.

  ## Options

    * `location`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec v2_connector_connect_key(connectorID :: String.t(), body :: map, opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_connector_connect_key(connectorID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [connectorID: connectorID, body: body],
      call: {OpenCode.Generated.Connectors, :v2_connector_connect_key},
      url: "/api/connector/#{connectorID}/connect/key",
      body: body,
      method: :post,
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

  @type v2_connector_connect_oauth_begin_200_json_resp :: %{
          data: OpenCode.Generated.ConnectorAttempt.t(),
          location: OpenCode.Generated.LocationInfo.t()
        }

  @doc """
  Begin OAuth connection

  Start an OAuth attempt and return the authorization details.

  ## Options

    * `location`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec v2_connector_connect_oauth_begin(connectorID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Connectors.v2_connector_connect_oauth_begin_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_connector_connect_oauth_begin(connectorID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [connectorID: connectorID, body: body],
      call: {OpenCode.Generated.Connectors, :v2_connector_connect_oauth_begin},
      url: "/api/connector/#{connectorID}/connect/oauth",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Connectors, :v2_connector_connect_oauth_begin_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Cancel OAuth connection

  Cancel an OAuth attempt and release its resources.

  ## Options

    * `location`

  """
  @spec v2_connector_connect_oauth_cancel(attemptID :: String.t(), opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_connector_connect_oauth_cancel(attemptID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [attemptID: attemptID],
      call: {OpenCode.Generated.Connectors, :v2_connector_connect_oauth_cancel},
      url: "/api/connector/oauth/#{attemptID}",
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
  Complete OAuth connection

  Complete a code-based OAuth attempt and store the resulting credential.

  ## Options

    * `location`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec v2_connector_connect_oauth_complete(attemptID :: String.t(), body :: map, opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_connector_connect_oauth_complete(attemptID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [attemptID: attemptID, body: body],
      call: {OpenCode.Generated.Connectors, :v2_connector_connect_oauth_complete},
      url: "/api/connector/oauth/#{attemptID}/complete",
      body: body,
      method: :post,
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

  @type v2_connector_connect_oauth_status_200_json_resp :: %{
          data:
            OpenCode.Generated.Connectors.v2_connector_connect_oauth_status_200_json_resp_data(),
          location: OpenCode.Generated.LocationInfo.t()
        }

  @type v2_connector_connect_oauth_status_200_json_resp_data_time :: %{
          created: number | String.t(),
          expires: number | String.t()
        }

  @type v2_connector_connect_oauth_status_200_json_resp_data :: %{
          message: String.t(),
          status: String.t(),
          time:
            OpenCode.Generated.Connectors.v2_connector_connect_oauth_status_200_json_resp_data_time()
        }

  @doc """
  Get OAuth attempt status

  Poll the current status of an OAuth attempt.

  ## Options

    * `location`

  """
  @spec v2_connector_connect_oauth_status(attemptID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Connectors.v2_connector_connect_oauth_status_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_connector_connect_oauth_status(attemptID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [attemptID: attemptID],
      call: {OpenCode.Generated.Connectors, :v2_connector_connect_oauth_status},
      url: "/api/connector/oauth/#{attemptID}",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Connectors, :v2_connector_connect_oauth_status_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @type v2_connector_get_200_json_resp :: %{
          data: OpenCode.Generated.ConnectorInfo.t(),
          location: OpenCode.Generated.LocationInfo.t()
        }

  @doc """
  Get connector

  Retrieve one connector and its authentication methods.

  ## Options

    * `location`

  """
  @spec v2_connector_get(connectorID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Connectors.v2_connector_get_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_connector_get(connectorID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [connectorID: connectorID],
      call: {OpenCode.Generated.Connectors, :v2_connector_get},
      url: "/api/connector/#{connectorID}",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Connectors, :v2_connector_get_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @type v2_connector_list_200_json_resp :: %{
          data: [OpenCode.Generated.ConnectorInfo.t()],
          location: OpenCode.Generated.LocationInfo.t()
        }

  @doc """
  List connectors

  Retrieve available connectors and their authentication methods.

  ## Options

    * `location`

  """
  @spec v2_connector_list(opts :: keyword) ::
          {:ok, OpenCode.Generated.Connectors.v2_connector_list_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_connector_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Connectors, :v2_connector_list},
      url: "/api/connector",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Connectors, :v2_connector_list_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(:v2_connector_connect_oauth_begin_200_json_resp) do
    [
      data: {OpenCode.Generated.ConnectorAttempt, :t},
      location: {OpenCode.Generated.LocationInfo, :t}
    ]
  end

  def __fields__(:v2_connector_connect_oauth_status_200_json_resp) do
    [
      data:
        {OpenCode.Generated.Connectors, :v2_connector_connect_oauth_status_200_json_resp_data},
      location: {OpenCode.Generated.LocationInfo, :t}
    ]
  end

  def __fields__(:v2_connector_connect_oauth_status_200_json_resp_data) do
    [
      message: :string,
      status: {:enum, ["complete", "expired", "failed", "pending"]},
      time:
        {OpenCode.Generated.Connectors,
         :v2_connector_connect_oauth_status_200_json_resp_data_time}
    ]
  end

  def __fields__(:v2_connector_connect_oauth_status_200_json_resp_data_time) do
    [
      created:
        {:union,
         [
           :number,
           const: "-Infinity",
           const: "Infinity",
           const: "NaN",
           enum: ["Infinity", "-Infinity", "NaN"]
         ]},
      expires:
        {:union,
         [
           :number,
           const: "-Infinity",
           const: "Infinity",
           const: "NaN",
           enum: ["Infinity", "-Infinity", "NaN"]
         ]}
    ]
  end

  def __fields__(:v2_connector_get_200_json_resp) do
    [
      data: {OpenCode.Generated.ConnectorInfo, :t},
      location: {OpenCode.Generated.LocationInfo, :t}
    ]
  end

  def __fields__(:v2_connector_list_200_json_resp) do
    [
      data: [{OpenCode.Generated.ConnectorInfo, :t}],
      location: {OpenCode.Generated.LocationInfo, :t}
    ]
  end
end
