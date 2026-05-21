defmodule OpenCode.Generated.Permission do
  @moduledoc """
  Provides API endpoints related to permission
  """

  @default_client OpenCode.Client

  @doc """
  List pending permissions

  Get all pending permission requests across all sessions.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec permission_list(opts :: keyword) ::
          {:ok, [OpenCode.Generated.PermissionRequest.t()]}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def permission_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Permission, :permission_list},
      url: "/permission",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.PermissionRequest, :t}]},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Respond to permission request

  Approve or deny a permission request from the AI assistant.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec permission_reply(requestID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.EffectHttpApiErrorBadRequest.t()
             | OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.NotFoundError.t()}
  def permission_reply(requestID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [requestID: requestID, body: body],
      call: {OpenCode.Generated.Permission, :permission_reply},
      url: "/permission/#{requestID}/reply",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, :boolean},
        {400,
         {:union,
          [
            {OpenCode.Generated.EffectHttpApiErrorBadRequest, :t},
            {OpenCode.Generated.InvalidRequestError, :t}
          ]}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end
end
