defmodule OpenCode.Generated.Integrations do
  @moduledoc """
  Provides API endpoints related to integrations
  """

  @default_client OpenCode.Client

  @doc """
  Cancel OAuth connection

  Cancel an OAuth attempt and release its resources.

  ## Options

    * `location`

  """
  @spec v2_integration_attempt_cancel(attemptID :: String.t(), opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_integration_attempt_cancel(attemptID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [attemptID: attemptID],
      call: {OpenCode.Generated.Integrations, :v2_integration_attempt_cancel},
      url: "/api/integration/attempt/#{attemptID}",
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
  @spec v2_integration_attempt_complete(attemptID :: String.t(), body :: map, opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_integration_attempt_complete(attemptID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [attemptID: attemptID, body: body],
      call: {OpenCode.Generated.Integrations, :v2_integration_attempt_complete},
      url: "/api/integration/attempt/#{attemptID}/complete",
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

  @type v2_integration_attempt_status_200_json_resp :: %{
          data:
            OpenCode.Generated.Integrations.v2_integration_attempt_status_200_json_resp_data(),
          location: OpenCode.Generated.LocationInfo.t()
        }

  @type v2_integration_attempt_status_200_json_resp_data :: %{
          message: String.t(),
          status: String.t(),
          time:
            OpenCode.Generated.Integrations.v2_integration_attempt_status_200_json_resp_data_time()
        }

  @doc """
  Get OAuth attempt status

  Poll the current status of an OAuth attempt.

  ## Options

    * `location`

  """
  @spec v2_integration_attempt_status(attemptID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Integrations.v2_integration_attempt_status_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_integration_attempt_status(attemptID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [attemptID: attemptID],
      call: {OpenCode.Generated.Integrations, :v2_integration_attempt_status},
      url: "/api/integration/attempt/#{attemptID}",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Integrations, :v2_integration_attempt_status_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Connect with key

  Run a key authentication method and store the resulting credential.

  ## Options

    * `location`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec v2_integration_connect_key(integrationID :: String.t(), body :: map, opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_integration_connect_key(integrationID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [integrationID: integrationID, body: body],
      call: {OpenCode.Generated.Integrations, :v2_integration_connect_key},
      url: "/api/integration/#{integrationID}/connect/key",
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

  @type v2_integration_connect_oauth_200_json_resp :: %{
          data: OpenCode.Generated.IntegrationAttempt.t(),
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
  @spec v2_integration_connect_oauth(integrationID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Integrations.v2_integration_connect_oauth_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_integration_connect_oauth(integrationID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [integrationID: integrationID, body: body],
      call: {OpenCode.Generated.Integrations, :v2_integration_connect_oauth},
      url: "/api/integration/#{integrationID}/connect/oauth",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Integrations, :v2_integration_connect_oauth_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @type v2_integration_get_200_json_resp :: %{
          data: OpenCode.Generated.IntegrationInfo.t(),
          location: OpenCode.Generated.LocationInfo.t()
        }

  @doc """
  Get integration

  Retrieve one integration and its authentication methods.

  ## Options

    * `location`

  """
  @spec v2_integration_get(integrationID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Integrations.v2_integration_get_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_integration_get(integrationID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [integrationID: integrationID],
      call: {OpenCode.Generated.Integrations, :v2_integration_get},
      url: "/api/integration/#{integrationID}",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Integrations, :v2_integration_get_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @type v2_integration_list_200_json_resp :: %{
          data: [OpenCode.Generated.IntegrationInfo.t()],
          location: OpenCode.Generated.LocationInfo.t()
        }

  @doc """
  List integrations

  Retrieve available integrations and their authentication methods.

  ## Options

    * `location`

  """
  @spec v2_integration_list(opts :: keyword) ::
          {:ok, OpenCode.Generated.Integrations.v2_integration_list_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_integration_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Integrations, :v2_integration_list},
      url: "/api/integration",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Integrations, :v2_integration_list_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(:v2_integration_attempt_status_200_json_resp) do
    [
      data: {OpenCode.Generated.Integrations, :v2_integration_attempt_status_200_json_resp_data},
      location: {OpenCode.Generated.LocationInfo, :t}
    ]
  end

  def __fields__(:v2_integration_attempt_status_200_json_resp_data) do
    [
      message: :string,
      status: {:enum, ["complete", "expired", "failed", "pending"]},
      time:
        {OpenCode.Generated.Integrations, :v2_integration_attempt_status_200_json_resp_data_time}
    ]
  end

  @type v2_integration_attempt_status_200_json_resp_data_time :: %{
          created: number | String.t(),
          expires: number | String.t()
        }

  def __fields__(:v2_integration_attempt_status_200_json_resp_data_time) do
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

  def __fields__(:v2_integration_connect_oauth_200_json_resp) do
    [
      data: {OpenCode.Generated.IntegrationAttempt, :t},
      location: {OpenCode.Generated.LocationInfo, :t}
    ]
  end

  def __fields__(:v2_integration_get_200_json_resp) do
    [
      data: {OpenCode.Generated.IntegrationInfo, :t},
      location: {OpenCode.Generated.LocationInfo, :t}
    ]
  end

  def __fields__(:v2_integration_list_200_json_resp) do
    [
      data: [{OpenCode.Generated.IntegrationInfo, :t}],
      location: {OpenCode.Generated.LocationInfo, :t}
    ]
  end
end
