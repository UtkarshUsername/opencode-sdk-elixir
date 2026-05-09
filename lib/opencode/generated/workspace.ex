defmodule OpenCode.Generated.Workspace do
  @moduledoc """
  Provides API endpoints related to workspace
  """

  @default_client OpenCode.Client

  @type experimental_workspace_adapter_list_200_json_resp :: %{
          description: String.t(),
          name: String.t(),
          type: String.t()
        }

  @doc """
  List workspace adapters

  List all available workspace adapters for the current project.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec experimental_workspace_adapter_list(opts :: keyword) ::
          {:ok,
           [OpenCode.Generated.Workspace.experimental_workspace_adapter_list_200_json_resp()]}
          | :error
  def experimental_workspace_adapter_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Workspace, :experimental_workspace_adapter_list},
      url: "/experimental/workspace/adapter",
      method: :get,
      query: query,
      response: [
        {200,
         [{OpenCode.Generated.Workspace, :experimental_workspace_adapter_list_200_json_resp}]}
      ],
      opts: opts
    })
  end

  @doc """
  Create workspace

  Create a workspace for the current project.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec experimental_workspace_create(body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Workspace.t()}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def experimental_workspace_create(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Workspace, :experimental_workspace_create},
      url: "/experimental/workspace",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Workspace, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  List workspaces

  List all workspaces.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec experimental_workspace_list(opts :: keyword) ::
          {:ok, [OpenCode.Generated.Workspace.t()]} | :error
  def experimental_workspace_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Workspace, :experimental_workspace_list},
      url: "/experimental/workspace",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.Workspace, :t}]}],
      opts: opts
    })
  end

  @doc """
  Remove workspace

  Remove an existing workspace.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec experimental_workspace_remove(id :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Workspace.t()}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def experimental_workspace_remove(id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [id: id],
      call: {OpenCode.Generated.Workspace, :experimental_workspace_remove},
      url: "/experimental/workspace/#{id}",
      method: :delete,
      query: query,
      response: [
        {200, {OpenCode.Generated.Workspace, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @type experimental_workspace_status_200_json_resp :: %{
          status: String.t(),
          workspace_id: String.t()
        }

  @doc """
  Workspace status

  Get connection status for workspaces in the current project.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec experimental_workspace_status(opts :: keyword) ::
          {:ok, [OpenCode.Generated.Workspace.experimental_workspace_status_200_json_resp()]}
          | :error
  def experimental_workspace_status(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Workspace, :experimental_workspace_status},
      url: "/experimental/workspace/status",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.Workspace, :experimental_workspace_status_200_json_resp}]}
      ],
      opts: opts
    })
  end

  @doc """
  Sync workspace list

  Register missing workspaces returned by workspace adapters.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec experimental_workspace_sync_list(opts :: keyword) :: :ok | :error
  def experimental_workspace_sync_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Workspace, :experimental_workspace_sync_list},
      url: "/experimental/workspace/sync-list",
      method: :post,
      query: query,
      response: [{204, :null}],
      opts: opts
    })
  end

  @doc """
  Warp session into workspace

  Move a session's sync history into the target workspace, or detach it to the local project.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec experimental_workspace_warp(body :: map, opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.VcsApplyError.t() | OpenCode.Generated.WorkspaceWarpError.t()}
  def experimental_workspace_warp(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Workspace, :experimental_workspace_warp},
      url: "/experimental/workspace/warp",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {204, :null},
        {400,
         {:union,
          [{OpenCode.Generated.VcsApplyError, :t}, {OpenCode.Generated.WorkspaceWarpError, :t}]}}
      ],
      opts: opts
    })
  end

  @type t :: %__MODULE__{
          branch: String.t() | nil,
          directory: String.t() | nil,
          extra: map | nil,
          id: String.t(),
          name: String.t(),
          project_id: String.t(),
          time_used: number | String.t(),
          type: String.t()
        }

  defstruct [:branch, :directory, :extra, :id, :name, :project_id, :time_used, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:experimental_workspace_adapter_list_200_json_resp) do
    [description: :string, name: :string, type: :string]
  end

  def __fields__(:experimental_workspace_status_200_json_resp) do
    [status: {:enum, ["connected", "connecting", "disconnected", "error"]}, workspace_id: :string]
  end

  def __fields__(:t) do
    [
      branch: {:union, [:string, :null]},
      directory: {:union, [:string, :null]},
      extra: {:union, [:map, :null]},
      id: :string,
      name: :string,
      project_id: :string,
      time_used:
        {:union,
         [
           :number,
           const: "-Infinity",
           const: "Infinity",
           const: "NaN",
           enum: ["Infinity", "-Infinity", "NaN"]
         ]},
      type: :string
    ]
  end
end
