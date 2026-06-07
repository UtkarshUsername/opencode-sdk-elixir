defmodule OpenCode.Generated.Permissions do
  @moduledoc """
  Provides API endpoints related to permissions
  """

  @default_client OpenCode.Client

  @type v2_permission_request_list_200_json_resp :: %{
          data: [OpenCode.Generated.PermissionV2Request.t()],
          location: OpenCode.Generated.LocationInfo.t()
        }

  @doc """
  List pending permission requests

  Retrieve pending permission requests for a location.

  ## Options

    * `location`

  """
  @spec v2_permission_request_list(opts :: keyword) ::
          {:ok, OpenCode.Generated.Permissions.v2_permission_request_list_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_permission_request_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Permissions, :v2_permission_request_list},
      url: "/api/permission/request",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Permissions, :v2_permission_request_list_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @type v2_permission_saved_list_200_json_resp :: %{
          data: [OpenCode.Generated.PermissionSavedInfo.t()]
        }

  @doc """
  List saved permissions

  Retrieve saved permissions, optionally filtered by project.

  ## Options

    * `projectID`

  """
  @spec v2_permission_saved_list(opts :: keyword) ::
          {:ok, OpenCode.Generated.Permissions.v2_permission_saved_list_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_permission_saved_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:projectID])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Permissions, :v2_permission_saved_list},
      url: "/api/permission/saved",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Permissions, :v2_permission_saved_list_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Remove saved permission

  Remove a saved permission by ID.
  """
  @spec v2_permission_saved_remove(id :: String.t(), opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_permission_saved_remove(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {OpenCode.Generated.Permissions, :v2_permission_saved_remove},
      url: "/api/permission/saved/#{id}",
      method: :delete,
      response: [
        {204, :null},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @type v2_session_permission_list_200_json_resp :: %{
          data: [OpenCode.Generated.PermissionV2Request.t()]
        }

  @doc """
  List session permission requests

  Retrieve pending permission requests owned by a session.
  """
  @spec v2_session_permission_list(sessionID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Permissions.v2_session_permission_list_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_session_permission_list(sessionID, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Permissions, :v2_session_permission_list},
      url: "/api/session/#{sessionID}/permission",
      method: :get,
      response: [
        {200, {OpenCode.Generated.Permissions, :v2_session_permission_list_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404, {OpenCode.Generated.SessionNotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Reply to pending permission request

  Respond to a pending permission request owned by a session.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec v2_session_permission_reply(
          sessionID :: String.t(),
          requestID :: String.t(),
          body :: map,
          opts :: keyword
        ) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.PermissionNotFoundError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_session_permission_reply(sessionID, requestID, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sessionID: sessionID, requestID: requestID, body: body],
      call: {OpenCode.Generated.Permissions, :v2_session_permission_reply},
      url: "/api/session/#{sessionID}/permission/#{requestID}/reply",
      body: body,
      method: :post,
      request: [{"application/json", :map}],
      response: [
        {204, :null},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404,
         {:union,
          [
            {OpenCode.Generated.PermissionNotFoundError, :t},
            {OpenCode.Generated.SessionNotFoundError, :t}
          ]}}
      ],
      opts: opts
    })
  end

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(:v2_permission_request_list_200_json_resp) do
    [
      data: [{OpenCode.Generated.PermissionV2Request, :t}],
      location: {OpenCode.Generated.LocationInfo, :t}
    ]
  end

  def __fields__(:v2_permission_saved_list_200_json_resp) do
    [data: [{OpenCode.Generated.PermissionSavedInfo, :t}]]
  end

  def __fields__(:v2_session_permission_list_200_json_resp) do
    [data: [{OpenCode.Generated.PermissionV2Request, :t}]]
  end
end
