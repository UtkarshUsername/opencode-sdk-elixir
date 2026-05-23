defmodule OpenCode.Generated.Instance do
  @moduledoc """
  Provides API endpoints related to instance
  """

  @default_client OpenCode.Client

  @doc """
  List agents

  Get a list of all available AI agents in the OpenCode system.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec app_agents(opts :: keyword) ::
          {:ok, [OpenCode.Generated.Agent.t()]} | {:error, OpenCode.Generated.BadRequestError.t()}
  def app_agents(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Instance, :app_agents},
      url: "/agent",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.Agent, :t}]},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @type app_skills_200_json_resp :: %{
          content: String.t(),
          description: String.t() | nil,
          location: String.t(),
          name: String.t()
        }

  @doc """
  List skills

  Get a list of all available skills in the OpenCode system.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec app_skills(opts :: keyword) ::
          {:ok, [OpenCode.Generated.Instance.app_skills_200_json_resp()]}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def app_skills(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Instance, :app_skills},
      url: "/skill",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.Instance, :app_skills_200_json_resp}]},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  List commands

  Get a list of all available commands in the OpenCode system.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec command_list(opts :: keyword) ::
          {:ok, [OpenCode.Generated.Command.t()]}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def command_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Instance, :command_list},
      url: "/command",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.Command, :t}]},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get formatter status

  Get formatter status

  ## Options

    * `directory`
    * `workspace`

  """
  @spec formatter_status(opts :: keyword) ::
          {:ok, [OpenCode.Generated.FormatterStatus.t()]}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def formatter_status(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Instance, :formatter_status},
      url: "/formatter",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.FormatterStatus, :t}]},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Dispose instance

  Clean up and dispose the current OpenCode instance, releasing all resources.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec instance_dispose(opts :: keyword) ::
          {:ok, boolean} | {:error, OpenCode.Generated.BadRequestError.t()}
  def instance_dispose(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Instance, :instance_dispose},
      url: "/instance/dispose",
      method: :post,
      query: query,
      response: [{200, :boolean}, {400, {OpenCode.Generated.BadRequestError, :t}}],
      opts: opts
    })
  end

  @doc """
  Get LSP status

  Get LSP server status

  ## Options

    * `directory`
    * `workspace`

  """
  @spec lsp_status(opts :: keyword) ::
          {:ok, [OpenCode.Generated.LSPStatus.t()]}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def lsp_status(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Instance, :lsp_status},
      url: "/lsp",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.LSPStatus, :t}]},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get paths

  Retrieve the current working directory and related path information for the OpenCode instance.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec path_get(opts :: keyword) ::
          {:ok, OpenCode.Generated.Path.t()} | {:error, OpenCode.Generated.BadRequestError.t()}
  def path_get(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Instance, :path_get},
      url: "/path",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Path, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @type vcs_apply_200_json_resp :: %{applied: boolean}

  @doc """
  Apply VCS patch

  Apply a raw patch to the current working tree.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec vcs_apply(body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Instance.vcs_apply_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.VcsApplyError.t()}
  def vcs_apply(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Instance, :vcs_apply},
      url: "/vcs/apply",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Instance, :vcs_apply_200_json_resp}},
        {400,
         {:union,
          [{OpenCode.Generated.InvalidRequestError, :t}, {OpenCode.Generated.VcsApplyError, :t}]}}
      ],
      opts: opts
    })
  end

  @doc """
  Get VCS diff

  Retrieve the current git diff for the working tree or against the default branch.

  ## Options

    * `directory`
    * `workspace`
    * `mode`
    * `context`

  """
  @spec vcs_diff(opts :: keyword) ::
          {:ok, [OpenCode.Generated.VcsFileDiff.t()]}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def vcs_diff(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:context, :directory, :mode, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Instance, :vcs_diff},
      url: "/vcs/diff",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.VcsFileDiff, :t}]},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get raw VCS diff

  Retrieve a raw patch for current uncommitted changes.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec vcs_diff_raw(opts :: keyword) ::
          {:ok, String.t()} | {:error, OpenCode.Generated.BadRequestError.t()}
  def vcs_diff_raw(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Instance, :vcs_diff_raw},
      url: "/vcs/diff/raw",
      method: :get,
      query: query,
      response: [{200, :string}, {400, {OpenCode.Generated.BadRequestError, :t}}],
      opts: opts
    })
  end

  @doc """
  Get VCS info

  Retrieve version control system (VCS) information for the current project, such as git branch.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec vcs_get(opts :: keyword) ::
          {:ok, OpenCode.Generated.VcsInfo.t()} | {:error, OpenCode.Generated.BadRequestError.t()}
  def vcs_get(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Instance, :vcs_get},
      url: "/vcs",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.VcsInfo, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get VCS status

  Retrieve changed files in the current working tree without patches.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec vcs_status(opts :: keyword) ::
          {:ok, [OpenCode.Generated.VcsFileStatus.t()]}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def vcs_status(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Instance, :vcs_status},
      url: "/vcs/status",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.VcsFileStatus, :t}]},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(:app_skills_200_json_resp) do
    [content: :string, description: :string, location: :string, name: :string]
  end

  def __fields__(:vcs_apply_200_json_resp) do
    [applied: :boolean]
  end
end
