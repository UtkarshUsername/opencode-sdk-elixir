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
  @spec app_agents(opts :: keyword) :: {:ok, [OpenCode.Generated.Agent.t()]} | :error
  def app_agents(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Instance, :app_agents},
      url: "/agent",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.Agent, :t}]}],
      opts: opts
    })
  end

  @type app_skills_200_json_resp :: %{
          content: String.t(),
          description: String.t(),
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
          {:ok, [OpenCode.Generated.Instance.app_skills_200_json_resp()]} | :error
  def app_skills(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Instance, :app_skills},
      url: "/skill",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.Instance, :app_skills_200_json_resp}]}],
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
  @spec command_list(opts :: keyword) :: {:ok, [OpenCode.Generated.Command.t()]} | :error
  def command_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Instance, :command_list},
      url: "/command",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.Command, :t}]}],
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
          {:ok, [OpenCode.Generated.FormatterStatus.t()]} | :error
  def formatter_status(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Instance, :formatter_status},
      url: "/formatter",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.FormatterStatus, :t}]}],
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
  @spec instance_dispose(opts :: keyword) :: {:ok, boolean} | :error
  def instance_dispose(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Instance, :instance_dispose},
      url: "/instance/dispose",
      method: :post,
      query: query,
      response: [{200, :boolean}],
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
  @spec lsp_status(opts :: keyword) :: {:ok, [OpenCode.Generated.LSPStatus.t()]} | :error
  def lsp_status(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Instance, :lsp_status},
      url: "/lsp",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.LSPStatus, :t}]}],
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
  @spec path_get(opts :: keyword) :: {:ok, OpenCode.Generated.Path.t()} | :error
  def path_get(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Instance, :path_get},
      url: "/path",
      method: :get,
      query: query,
      response: [{200, {OpenCode.Generated.Path, :t}}],
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

  """
  @spec vcs_diff(opts :: keyword) :: {:ok, [OpenCode.Generated.VcsFileDiff.t()]} | :error
  def vcs_diff(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :mode, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Instance, :vcs_diff},
      url: "/vcs/diff",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.VcsFileDiff, :t}]}],
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
  @spec vcs_get(opts :: keyword) :: {:ok, OpenCode.Generated.VcsInfo.t()} | :error
  def vcs_get(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Instance, :vcs_get},
      url: "/vcs",
      method: :get,
      query: query,
      response: [{200, {OpenCode.Generated.VcsInfo, :t}}],
      opts: opts
    })
  end

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(:app_skills_200_json_resp) do
    [content: :string, description: :string, location: :string, name: :string]
  end
end
