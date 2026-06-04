defmodule OpenCode.Generated.V2Permissions do
  @moduledoc """
  Provides API endpoint related to v2 permissions
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
          {:ok, OpenCode.Generated.V2Permissions.v2_permission_request_list_200_json_resp()}
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
        {200, {OpenCode.Generated.V2Permissions, :v2_permission_request_list_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
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
end
