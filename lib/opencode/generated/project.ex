defmodule OpenCode.Generated.Project do
  @moduledoc """
  Provides API endpoints related to project
  """

  @default_client OpenCode.Client

  @doc """
  Get current project

  Retrieve the currently active project that OpenCode is working with.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec project_current(opts :: keyword) ::
          {:ok, OpenCode.Generated.Project.t()} | {:error, OpenCode.Generated.BadRequestError.t()}
  def project_current(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Project, :project_current},
      url: "/project/current",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Project, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  List project directories

  List known local absolute directories for a project.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec project_directories(projectID :: String.t(), opts :: keyword) ::
          {:ok, [OpenCode.Generated.ProjectDirectories.t()]}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def project_directories(projectID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [projectID: projectID],
      call: {OpenCode.Generated.Project, :project_directories},
      url: "/project/#{projectID}/directories",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.ProjectDirectories, :t}]},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Initialize git repository

  Create a git repository for the current project and return the refreshed project info.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec project_init_git(opts :: keyword) ::
          {:ok, OpenCode.Generated.Project.t()} | {:error, OpenCode.Generated.BadRequestError.t()}
  def project_init_git(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Project, :project_init_git},
      url: "/project/git/init",
      method: :post,
      query: query,
      response: [
        {200, {OpenCode.Generated.Project, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  List all projects

  Get a list of projects that have been opened with OpenCode.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec project_list(opts :: keyword) ::
          {:ok, [OpenCode.Generated.Project.t()]}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def project_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Project, :project_list},
      url: "/project",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.Project, :t}]},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update project

  Update project properties such as name, icon, and commands.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec project_update(projectID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Project.t()}
          | {:error,
             OpenCode.Generated.EffectHttpApiErrorBadRequest.t()
             | OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.ProjectNotFoundError.t()}
  def project_update(projectID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [projectID: projectID, body: body],
      call: {OpenCode.Generated.Project, :project_update},
      url: "/project/#{projectID}",
      body: body,
      method: :patch,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Project, :t}},
        {400,
         {:union,
          [
            {OpenCode.Generated.EffectHttpApiErrorBadRequest, :t},
            {OpenCode.Generated.InvalidRequestError, :t}
          ]}},
        {404, {OpenCode.Generated.ProjectNotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @type t :: %__MODULE__{
          commands: OpenCode.Generated.ProjectCommands.t() | nil,
          icon: OpenCode.Generated.ProjectIcon.t() | nil,
          id: String.t(),
          name: String.t() | nil,
          sandboxes: [String.t()],
          time: OpenCode.Generated.ProjectTime.t(),
          vcs: String.t() | nil,
          worktree: String.t()
        }

  defstruct [:commands, :icon, :id, :name, :sandboxes, :time, :vcs, :worktree]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      commands: {OpenCode.Generated.ProjectCommands, :t},
      icon: {OpenCode.Generated.ProjectIcon, :t},
      id: :string,
      name: :string,
      sandboxes: [:string],
      time: {OpenCode.Generated.ProjectTime, :t},
      vcs: {:const, "git"},
      worktree: :string
    ]
  end
end
