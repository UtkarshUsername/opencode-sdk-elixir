defmodule OpenCode.Generated.V2Permissions do
  @moduledoc """
  Provides API endpoint related to v2 permissions
  """

  @default_client OpenCode.Client

  @doc """
  List pending permission requests

  Retrieve pending permission requests for a location.

  ## Options

    * `location`

  """
  @spec v2_permission_request_list(opts :: keyword) ::
          {:ok, [OpenCode.Generated.PermissionV2Request.t()]}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_permission_request_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.V2Permissions, :v2_permission_request_list},
      url: "/api/permission/request",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.PermissionV2Request, :t}]},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end
end
