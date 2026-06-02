defmodule OpenCode.Generated.V2SessionPermissions do
  @moduledoc """
  Provides API endpoints related to v2 session permissions
  """

  @default_client OpenCode.Client

  @doc """
  List session permission requests

  Retrieve pending permission requests owned by a session.
  """
  @spec v2_session_permission_list(sessionID :: String.t(), opts :: keyword) ::
          {:ok, [OpenCode.Generated.PermissionV2Request.t()]}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_session_permission_list(sessionID, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.V2SessionPermissions, :v2_session_permission_list},
      url: "/api/session/#{sessionID}/permission/request",
      method: :get,
      response: [
        {200, [{OpenCode.Generated.PermissionV2Request, :t}]},
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
      call: {OpenCode.Generated.V2SessionPermissions, :v2_session_permission_reply},
      url: "/api/session/#{sessionID}/permission/request/#{requestID}/reply",
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
end
