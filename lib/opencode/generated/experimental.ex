defmodule OpenCode.Generated.Experimental do
  @moduledoc """
  Provides API endpoints related to experimental
  """

  @default_client OpenCode.Client

  @doc """
  Get active Console provider metadata

  Get the active Console org name and the set of provider IDs managed by that Console org.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec experimental_console_get(opts :: keyword) ::
          {:ok, OpenCode.Generated.ConsoleState.t()} | :error
  def experimental_console_get(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Experimental, :experimental_console_get},
      url: "/experimental/console",
      method: :get,
      query: query,
      response: [{200, {OpenCode.Generated.ConsoleState, :t}}],
      opts: opts
    })
  end

  @type experimental_console_list_orgs_200_json_resp :: %{
          orgs: [
            OpenCode.Generated.Experimental.experimental_console_list_orgs_200_json_resp_orgs()
          ]
        }

  @type experimental_console_list_orgs_200_json_resp_orgs :: %{
          account_email: String.t(),
          account_id: String.t(),
          account_url: String.t(),
          active: boolean,
          org_id: String.t(),
          org_name: String.t()
        }

  @doc """
  List switchable Console orgs

  Get the available Console orgs across logged-in accounts, including the current active org.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec experimental_console_list_orgs(opts :: keyword) ::
          {:ok, OpenCode.Generated.Experimental.experimental_console_list_orgs_200_json_resp()}
          | :error
  def experimental_console_list_orgs(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Experimental, :experimental_console_list_orgs},
      url: "/experimental/console/orgs",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Experimental, :experimental_console_list_orgs_200_json_resp}}
      ],
      opts: opts
    })
  end

  @doc """
  Switch active Console org

  Persist a new active Console account/org selection for the current local OpenCode state.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec experimental_console_switch_org(body :: map, opts :: keyword) :: {:ok, boolean} | :error
  def experimental_console_switch_org(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Experimental, :experimental_console_switch_org},
      url: "/experimental/console/switch",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [{200, :boolean}],
      opts: opts
    })
  end

  @doc """
  Get MCP resources

  Get all available MCP resources from connected servers. Optionally filter by name.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec experimental_resource_list(opts :: keyword) :: {:ok, map} | :error
  def experimental_resource_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Experimental, :experimental_resource_list},
      url: "/experimental/resource",
      method: :get,
      query: query,
      response: [{200, :map}],
      opts: opts
    })
  end

  @doc """
  List sessions

  Get a list of all OpenCode sessions across projects, sorted by most recently updated. Archived sessions are excluded by default.

  ## Options

    * `directory`
    * `workspace`
    * `roots`
    * `start`
    * `cursor`
    * `search`
    * `limit`
    * `archived`

  """
  @spec experimental_session_list(opts :: keyword) ::
          {:ok, [OpenCode.Generated.GlobalSession.t()]} | :error
  def experimental_session_list(opts \\ []) do
    client = opts[:client] || @default_client

    query =
      Keyword.take(opts, [
        :archived,
        :cursor,
        :directory,
        :limit,
        :roots,
        :search,
        :start,
        :workspace
      ])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Experimental, :experimental_session_list},
      url: "/experimental/session",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.GlobalSession, :t}]}],
      opts: opts
    })
  end

  @doc """
  List tool IDs

  Get a list of all available tool IDs, including both built-in tools and dynamically registered tools.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec tool_ids(opts :: keyword) ::
          {:ok, [String.t()]} | {:error, OpenCode.Generated.BadRequestError.t()}
  def tool_ids(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Experimental, :tool_ids},
      url: "/experimental/tool/ids",
      method: :get,
      query: query,
      response: [{200, [:string]}, {400, {OpenCode.Generated.BadRequestError, :t}}],
      opts: opts
    })
  end

  @doc """
  List tools

  Get a list of available tools with their JSON schema parameters for a specific provider and model combination.

  ## Options

    * `directory`
    * `workspace`
    * `provider`
    * `model`

  """
  @spec tool_list(opts :: keyword) ::
          {:ok, [OpenCode.Generated.ToolListItem.t()]}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def tool_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :model, :provider, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Experimental, :tool_list},
      url: "/experimental/tool",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.ToolListItem, :t}]},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create worktree

  Create a new git worktree for the current project and run any configured startup scripts.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec worktree_create(body :: OpenCode.Generated.WorktreeCreateInput.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Worktree.t()}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def worktree_create(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Experimental, :worktree_create},
      url: "/experimental/worktree",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", {OpenCode.Generated.WorktreeCreateInput, :t}}],
      response: [
        {200, {OpenCode.Generated.Worktree, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  List worktrees

  List all sandbox worktrees for the current project.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec worktree_list(opts :: keyword) :: {:ok, [String.t()]} | :error
  def worktree_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Experimental, :worktree_list},
      url: "/experimental/worktree",
      method: :get,
      query: query,
      response: [{200, [:string]}],
      opts: opts
    })
  end

  @doc """
  Remove worktree

  Remove a git worktree and delete its branch.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec worktree_remove(body :: OpenCode.Generated.WorktreeRemoveInput.t(), opts :: keyword) ::
          {:ok, boolean} | {:error, OpenCode.Generated.BadRequestError.t()}
  def worktree_remove(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Experimental, :worktree_remove},
      url: "/experimental/worktree",
      body: body,
      method: :delete,
      query: query,
      request: [{"application/json", {OpenCode.Generated.WorktreeRemoveInput, :t}}],
      response: [{200, :boolean}, {400, {OpenCode.Generated.BadRequestError, :t}}],
      opts: opts
    })
  end

  @doc """
  Reset worktree

  Reset a worktree branch to the primary default branch.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec worktree_reset(body :: OpenCode.Generated.WorktreeResetInput.t(), opts :: keyword) ::
          {:ok, boolean} | {:error, OpenCode.Generated.BadRequestError.t()}
  def worktree_reset(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Experimental, :worktree_reset},
      url: "/experimental/worktree/reset",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", {OpenCode.Generated.WorktreeResetInput, :t}}],
      response: [{200, :boolean}, {400, {OpenCode.Generated.BadRequestError, :t}}],
      opts: opts
    })
  end

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(:experimental_console_list_orgs_200_json_resp) do
    [
      orgs: [
        {OpenCode.Generated.Experimental, :experimental_console_list_orgs_200_json_resp_orgs}
      ]
    ]
  end

  def __fields__(:experimental_console_list_orgs_200_json_resp_orgs) do
    [
      account_email: :string,
      account_id: :string,
      account_url: :string,
      active: :boolean,
      org_id: :string,
      org_name: :string
    ]
  end
end
