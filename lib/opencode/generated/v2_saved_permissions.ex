defmodule OpenCode.Generated.V2SavedPermissions do
  @moduledoc """
  Provides API endpoints related to v2 saved permissions
  """

  @default_client OpenCode.Client

  @doc """
  List saved permissions

  Retrieve saved permissions, optionally filtered by project.

  ## Options

    * `projectID`

  """
  @spec v2_permission_saved_list(opts :: keyword) ::
          {:ok, [OpenCode.Generated.PermissionSavedInfo.t()]}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_permission_saved_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:projectID])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.V2SavedPermissions, :v2_permission_saved_list},
      url: "/api/permission/saved",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.PermissionSavedInfo, :t}]},
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
      call: {OpenCode.Generated.V2SavedPermissions, :v2_permission_saved_remove},
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
end
