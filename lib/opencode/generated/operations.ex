defmodule OpenCode.Generated.Operations do
  @moduledoc """
  Provides API endpoints related to operations
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
      call: {OpenCode.Generated.Operations, :app_agents},
      url: "/agent",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.Agent, :t}]}],
      opts: opts
    })
  end

  @doc """
  Write log

  Write a log entry to the server logs with specified level and metadata.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec app_log(body :: map, opts :: keyword) ::
          {:ok, boolean} | {:error, OpenCode.Generated.BadRequestError.t()}
  def app_log(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Operations, :app_log},
      url: "/log",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [{200, :boolean}, {400, {OpenCode.Generated.BadRequestError, :t}}],
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
          {:ok, [OpenCode.Generated.Operations.app_skills_200_json_resp()]} | :error
  def app_skills(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :app_skills},
      url: "/skill",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.Operations, :app_skills_200_json_resp}]}],
      opts: opts
    })
  end

  @doc """
  Remove auth credentials

  Remove authentication credentials
  """
  @spec auth_remove(providerID :: String.t(), opts :: keyword) ::
          {:ok, boolean} | {:error, OpenCode.Generated.BadRequestError.t()}
  def auth_remove(providerID, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [providerID: providerID],
      call: {OpenCode.Generated.Operations, :auth_remove},
      url: "/auth/#{providerID}",
      method: :delete,
      response: [{200, :boolean}, {400, {OpenCode.Generated.BadRequestError, :t}}],
      opts: opts
    })
  end

  @doc """
  Set auth credentials

  Set authentication credentials

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec auth_set(
          providerID :: String.t(),
          body ::
            OpenCode.Generated.ApiAuth.t()
            | OpenCode.Generated.OAuth.t()
            | OpenCode.Generated.WellKnownAuth.t(),
          opts :: keyword
        ) :: {:ok, boolean} | {:error, OpenCode.Generated.BadRequestError.t()}
  def auth_set(providerID, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [providerID: providerID, body: body],
      call: {OpenCode.Generated.Operations, :auth_set},
      url: "/auth/#{providerID}",
      body: body,
      method: :put,
      request: [
        {"application/json",
         {:union,
          [
            {OpenCode.Generated.ApiAuth, :t},
            {OpenCode.Generated.OAuth, :t},
            {OpenCode.Generated.WellKnownAuth, :t}
          ]}}
      ],
      response: [{200, :boolean}, {400, {OpenCode.Generated.BadRequestError, :t}}],
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
      call: {OpenCode.Generated.Operations, :command_list},
      url: "/command",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.Command, :t}]}],
      opts: opts
    })
  end

  @doc """
  Get configuration

  Retrieve the current OpenCode configuration settings and preferences.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec config_get(opts :: keyword) :: {:ok, OpenCode.Generated.Config.t()} | :error
  def config_get(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :config_get},
      url: "/config",
      method: :get,
      query: query,
      response: [{200, {OpenCode.Generated.Config, :t}}],
      opts: opts
    })
  end

  @type config_providers_200_json_resp :: %{
          default: map,
          providers: [OpenCode.Generated.Provider.t()]
        }

  @doc """
  List config providers

  Get a list of all configured AI providers and their default models.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec config_providers(opts :: keyword) ::
          {:ok, OpenCode.Generated.Operations.config_providers_200_json_resp()} | :error
  def config_providers(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :config_providers},
      url: "/config/providers",
      method: :get,
      query: query,
      response: [{200, {OpenCode.Generated.Operations, :config_providers_200_json_resp}}],
      opts: opts
    })
  end

  @doc """
  Update configuration

  Update OpenCode configuration settings and preferences.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec config_update(body :: OpenCode.Generated.Config.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Config.t()} | {:error, OpenCode.Generated.BadRequestError.t()}
  def config_update(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Operations, :config_update},
      url: "/config",
      body: body,
      method: :patch,
      query: query,
      request: [{"application/json", {OpenCode.Generated.Config, :t}}],
      response: [
        {200, {OpenCode.Generated.Config, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Subscribe to events

  Get events

  ## Options

    * `directory`
    * `workspace`

  """
  @spec event_subscribe(opts :: keyword) ::
          {:ok,
           OpenCode.Generated.EventCommandExecuted.t()
           | OpenCode.Generated.EventFileEdited.t()
           | OpenCode.Generated.EventFileWatcherUpdated.t()
           | OpenCode.Generated.EventGlobalDisposed.t()
           | OpenCode.Generated.EventInstallationUpdateAvailable.t()
           | OpenCode.Generated.EventInstallationUpdated.t()
           | OpenCode.Generated.EventLspClientDiagnostics.t()
           | OpenCode.Generated.EventLspUpdated.t()
           | OpenCode.Generated.EventMcpBrowserOpenFailed.t()
           | OpenCode.Generated.EventMcpToolsChanged.t()
           | OpenCode.Generated.EventMessagePartDelta.t()
           | OpenCode.Generated.EventMessagePartRemoved.t()
           | OpenCode.Generated.EventMessagePartUpdated.t()
           | OpenCode.Generated.EventMessageRemoved.t()
           | OpenCode.Generated.EventMessageUpdated.t()
           | OpenCode.Generated.EventPermissionAsked.t()
           | OpenCode.Generated.EventPermissionReplied.t()
           | OpenCode.Generated.EventProjectUpdated.t()
           | OpenCode.Generated.EventPtyCreated.t()
           | OpenCode.Generated.EventPtyDeleted.t()
           | OpenCode.Generated.EventPtyExited.t()
           | OpenCode.Generated.EventPtyUpdated.t()
           | OpenCode.Generated.EventQuestionAsked.t()
           | OpenCode.Generated.EventQuestionRejected.t()
           | OpenCode.Generated.EventQuestionReplied.t()
           | OpenCode.Generated.EventServerConnected.t()
           | OpenCode.Generated.EventServerInstanceDisposed.t()
           | OpenCode.Generated.EventSessionCompacted.t()
           | OpenCode.Generated.EventSessionCreated.t()
           | OpenCode.Generated.EventSessionDeleted.t()
           | OpenCode.Generated.EventSessionDiff.t()
           | OpenCode.Generated.EventSessionError.t()
           | OpenCode.Generated.EventSessionIdle.t()
           | OpenCode.Generated.EventSessionStatus.t()
           | OpenCode.Generated.EventSessionUpdated.t()
           | OpenCode.Generated.EventTodoUpdated.t()
           | OpenCode.Generated.EventTuiCommandExecute.t()
           | OpenCode.Generated.EventTuiPromptAppend.t()
           | OpenCode.Generated.EventTuiSessionSelect.t()
           | OpenCode.Generated.EventTuiToastShow.t()
           | OpenCode.Generated.EventVcsBranchUpdated.t()
           | OpenCode.Generated.EventWorkspaceFailed.t()
           | OpenCode.Generated.EventWorkspaceReady.t()
           | OpenCode.Generated.EventWorktreeFailed.t()
           | OpenCode.Generated.EventWorktreeReady.t()}
          | :error
  def event_subscribe(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :event_subscribe},
      url: "/event",
      method: :get,
      query: query,
      response: [
        {200,
         {:union,
          [
            {OpenCode.Generated.EventCommandExecuted, :t},
            {OpenCode.Generated.EventFileEdited, :t},
            {OpenCode.Generated.EventFileWatcherUpdated, :t},
            {OpenCode.Generated.EventGlobalDisposed, :t},
            {OpenCode.Generated.EventInstallationUpdateAvailable, :t},
            {OpenCode.Generated.EventInstallationUpdated, :t},
            {OpenCode.Generated.EventLspClientDiagnostics, :t},
            {OpenCode.Generated.EventLspUpdated, :t},
            {OpenCode.Generated.EventMcpBrowserOpenFailed, :t},
            {OpenCode.Generated.EventMcpToolsChanged, :t},
            {OpenCode.Generated.EventMessagePartDelta, :t},
            {OpenCode.Generated.EventMessagePartRemoved, :t},
            {OpenCode.Generated.EventMessagePartUpdated, :t},
            {OpenCode.Generated.EventMessageRemoved, :t},
            {OpenCode.Generated.EventMessageUpdated, :t},
            {OpenCode.Generated.EventPermissionAsked, :t},
            {OpenCode.Generated.EventPermissionReplied, :t},
            {OpenCode.Generated.EventProjectUpdated, :t},
            {OpenCode.Generated.EventPtyCreated, :t},
            {OpenCode.Generated.EventPtyDeleted, :t},
            {OpenCode.Generated.EventPtyExited, :t},
            {OpenCode.Generated.EventPtyUpdated, :t},
            {OpenCode.Generated.EventQuestionAsked, :t},
            {OpenCode.Generated.EventQuestionRejected, :t},
            {OpenCode.Generated.EventQuestionReplied, :t},
            {OpenCode.Generated.EventServerConnected, :t},
            {OpenCode.Generated.EventServerInstanceDisposed, :t},
            {OpenCode.Generated.EventSessionCompacted, :t},
            {OpenCode.Generated.EventSessionCreated, :t},
            {OpenCode.Generated.EventSessionDeleted, :t},
            {OpenCode.Generated.EventSessionDiff, :t},
            {OpenCode.Generated.EventSessionError, :t},
            {OpenCode.Generated.EventSessionIdle, :t},
            {OpenCode.Generated.EventSessionStatus, :t},
            {OpenCode.Generated.EventSessionUpdated, :t},
            {OpenCode.Generated.EventTodoUpdated, :t},
            {OpenCode.Generated.EventTuiCommandExecute, :t},
            {OpenCode.Generated.EventTuiPromptAppend, :t},
            {OpenCode.Generated.EventTuiSessionSelect, :t},
            {OpenCode.Generated.EventTuiToastShow, :t},
            {OpenCode.Generated.EventVcsBranchUpdated, :t},
            {OpenCode.Generated.EventWorkspaceFailed, :t},
            {OpenCode.Generated.EventWorkspaceReady, :t},
            {OpenCode.Generated.EventWorktreeFailed, :t},
            {OpenCode.Generated.EventWorktreeReady, :t}
          ]}}
      ],
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
      call: {OpenCode.Generated.Operations, :experimental_resource_list},
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

    * `directory`: Filter sessions by project directory
    * `workspace`
    * `roots`: Only return root sessions (no parentID)
    * `start`: Filter sessions updated on or after this timestamp (milliseconds since epoch)
    * `cursor`: Return sessions updated before this timestamp (milliseconds since epoch)
    * `search`: Filter sessions by title (case-insensitive)
    * `limit`: Maximum number of sessions to return
    * `archived`: Include archived sessions (default false)

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
      call: {OpenCode.Generated.Operations, :experimental_session_list},
      url: "/experimental/session",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.GlobalSession, :t}]}],
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
      call: {OpenCode.Generated.Operations, :experimental_workspace_create},
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
      call: {OpenCode.Generated.Operations, :experimental_workspace_list},
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
      call: {OpenCode.Generated.Operations, :experimental_workspace_remove},
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

  @doc """
  List files

  List files and directories in a specified path.

  ## Options

    * `directory`
    * `workspace`
    * `path`

  """
  @spec file_list(opts :: keyword) :: {:ok, [OpenCode.Generated.FileNode.t()]} | :error
  def file_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :path, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :file_list},
      url: "/file",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.FileNode, :t}]}],
      opts: opts
    })
  end

  @doc """
  Read file

  Read the content of a specified file.

  ## Options

    * `directory`
    * `workspace`
    * `path`

  """
  @spec file_read(opts :: keyword) :: {:ok, OpenCode.Generated.FileContent.t()} | :error
  def file_read(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :path, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :file_read},
      url: "/file/content",
      method: :get,
      query: query,
      response: [{200, {OpenCode.Generated.FileContent, :t}}],
      opts: opts
    })
  end

  @doc """
  Get file status

  Get the git status of all files in the project.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec file_status(opts :: keyword) :: {:ok, [OpenCode.Generated.File.t()]} | :error
  def file_status(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :file_status},
      url: "/file/status",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.File, :t}]}],
      opts: opts
    })
  end

  @doc """
  Find files

  Search for files or directories by name or pattern in the project directory.

  ## Options

    * `directory`
    * `workspace`
    * `query`
    * `dirs`
    * `type`
    * `limit`

  """
  @spec find_files(opts :: keyword) :: {:ok, [String.t()]} | :error
  def find_files(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :dirs, :limit, :query, :type, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :find_files},
      url: "/find/file",
      method: :get,
      query: query,
      response: [{200, [:string]}],
      opts: opts
    })
  end

  @doc """
  Find symbols

  Search for workspace symbols like functions, classes, and variables using LSP.

  ## Options

    * `directory`
    * `workspace`
    * `query`

  """
  @spec find_symbols(opts :: keyword) :: {:ok, [OpenCode.Generated.Symbol.t()]} | :error
  def find_symbols(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :query, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :find_symbols},
      url: "/find/symbol",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.Symbol, :t}]}],
      opts: opts
    })
  end

  @type find_text_200_json_resp :: %{
          absolute_offset: number,
          line_number: number,
          lines: OpenCode.Generated.Operations.find_text_200_json_resp_lines(),
          path: OpenCode.Generated.Operations.find_text_200_json_resp_path(),
          submatches: [OpenCode.Generated.Operations.find_text_200_json_resp_submatches()]
        }

  @type find_text_200_json_resp_lines :: %{text: String.t()}

  @type find_text_200_json_resp_path :: %{text: String.t()}

  @type find_text_200_json_resp_submatches :: %{
          end: number,
          match: OpenCode.Generated.Operations.find_text_200_json_resp_submatches_match(),
          start: number
        }

  @type find_text_200_json_resp_submatches_match :: %{text: String.t()}

  @doc """
  Find text

  Search for text patterns across files in the project using ripgrep.

  ## Options

    * `directory`
    * `workspace`
    * `pattern`

  """
  @spec find_text(opts :: keyword) ::
          {:ok, [OpenCode.Generated.Operations.find_text_200_json_resp()]} | :error
  def find_text(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :pattern, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :find_text},
      url: "/find",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.Operations, :find_text_200_json_resp}]}],
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
      call: {OpenCode.Generated.Operations, :formatter_status},
      url: "/formatter",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.FormatterStatus, :t}]}],
      opts: opts
    })
  end

  @doc """
  Get global configuration

  Retrieve the current global OpenCode configuration settings and preferences.
  """
  @spec global_config_get(opts :: keyword) :: {:ok, OpenCode.Generated.Config.t()} | :error
  def global_config_get(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :global_config_get},
      url: "/global/config",
      method: :get,
      response: [{200, {OpenCode.Generated.Config, :t}}],
      opts: opts
    })
  end

  @doc """
  Update global configuration

  Update global OpenCode configuration settings and preferences.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec global_config_update(body :: OpenCode.Generated.Config.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Config.t()} | {:error, OpenCode.Generated.BadRequestError.t()}
  def global_config_update(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Operations, :global_config_update},
      url: "/global/config",
      body: body,
      method: :patch,
      request: [{"application/json", {OpenCode.Generated.Config, :t}}],
      response: [
        {200, {OpenCode.Generated.Config, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Dispose instance

  Clean up and dispose all OpenCode instances, releasing all resources.
  """
  @spec global_dispose(opts :: keyword) :: {:ok, boolean} | :error
  def global_dispose(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :global_dispose},
      url: "/global/dispose",
      method: :post,
      response: [{200, :boolean}],
      opts: opts
    })
  end

  @doc """
  Get global events

  Subscribe to global events from the OpenCode system using server-sent events.
  """
  @spec global_event(opts :: keyword) :: {:ok, OpenCode.Generated.GlobalEvent.t()} | :error
  def global_event(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :global_event},
      url: "/global/event",
      method: :get,
      response: [{200, {OpenCode.Generated.GlobalEvent, :t}}],
      opts: opts
    })
  end

  @type global_health_200_json_resp :: %{healthy: true, version: String.t()}

  @doc """
  Get health

  Get health information about the OpenCode server.
  """
  @spec global_health(opts :: keyword) ::
          {:ok, OpenCode.Generated.Operations.global_health_200_json_resp()} | :error
  def global_health(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :global_health},
      url: "/global/health",
      method: :get,
      response: [{200, {OpenCode.Generated.Operations, :global_health_200_json_resp}}],
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
      call: {OpenCode.Generated.Operations, :instance_dispose},
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
      call: {OpenCode.Generated.Operations, :lsp_status},
      url: "/lsp",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.LSPStatus, :t}]}],
      opts: opts
    })
  end

  @doc """
  Add MCP server

  Dynamically add a new Model Context Protocol (MCP) server to the system.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec mcp_add(body :: map, opts :: keyword) ::
          {:ok, map} | {:error, OpenCode.Generated.BadRequestError.t()}
  def mcp_add(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Operations, :mcp_add},
      url: "/mcp",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [{200, :map}, {400, {OpenCode.Generated.BadRequestError, :t}}],
      opts: opts
    })
  end

  @doc """
  Authenticate MCP OAuth

  Start OAuth flow and wait for callback (opens browser)

  ## Options

    * `directory`
    * `workspace`

  """
  @spec mcp_auth_authenticate(name :: String.t(), opts :: keyword) ::
          {:ok,
           OpenCode.Generated.MCPStatusConnected.t()
           | OpenCode.Generated.MCPStatusDisabled.t()
           | OpenCode.Generated.MCPStatusFailed.t()
           | OpenCode.Generated.MCPStatusNeedsAuth.t()
           | OpenCode.Generated.MCPStatusNeedsClientRegistration.t()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def mcp_auth_authenticate(name, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [name: name],
      call: {OpenCode.Generated.Operations, :mcp_auth_authenticate},
      url: "/mcp/#{name}/auth/authenticate",
      method: :post,
      query: query,
      response: [
        {200,
         {:union,
          [
            {OpenCode.Generated.MCPStatusConnected, :t},
            {OpenCode.Generated.MCPStatusDisabled, :t},
            {OpenCode.Generated.MCPStatusFailed, :t},
            {OpenCode.Generated.MCPStatusNeedsAuth, :t},
            {OpenCode.Generated.MCPStatusNeedsClientRegistration, :t}
          ]}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Complete MCP OAuth

  Complete OAuth authentication for a Model Context Protocol (MCP) server using the authorization code.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec mcp_auth_callback(name :: String.t(), body :: map, opts :: keyword) ::
          {:ok,
           OpenCode.Generated.MCPStatusConnected.t()
           | OpenCode.Generated.MCPStatusDisabled.t()
           | OpenCode.Generated.MCPStatusFailed.t()
           | OpenCode.Generated.MCPStatusNeedsAuth.t()
           | OpenCode.Generated.MCPStatusNeedsClientRegistration.t()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def mcp_auth_callback(name, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [name: name, body: body],
      call: {OpenCode.Generated.Operations, :mcp_auth_callback},
      url: "/mcp/#{name}/auth/callback",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200,
         {:union,
          [
            {OpenCode.Generated.MCPStatusConnected, :t},
            {OpenCode.Generated.MCPStatusDisabled, :t},
            {OpenCode.Generated.MCPStatusFailed, :t},
            {OpenCode.Generated.MCPStatusNeedsAuth, :t},
            {OpenCode.Generated.MCPStatusNeedsClientRegistration, :t}
          ]}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @type mcp_auth_remove_200_json_resp :: %{success: true}

  @doc """
  Remove MCP OAuth

  Remove OAuth credentials for an MCP server

  ## Options

    * `directory`
    * `workspace`

  """
  @spec mcp_auth_remove(name :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Operations.mcp_auth_remove_200_json_resp()}
          | {:error, OpenCode.Generated.NotFoundError.t()}
  def mcp_auth_remove(name, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [name: name],
      call: {OpenCode.Generated.Operations, :mcp_auth_remove},
      url: "/mcp/#{name}/auth",
      method: :delete,
      query: query,
      response: [
        {200, {OpenCode.Generated.Operations, :mcp_auth_remove_200_json_resp}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @type mcp_auth_start_200_json_resp :: %{authorization_url: String.t()}

  @doc """
  Start MCP OAuth

  Start OAuth authentication flow for a Model Context Protocol (MCP) server.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec mcp_auth_start(name :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Operations.mcp_auth_start_200_json_resp()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def mcp_auth_start(name, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [name: name],
      call: {OpenCode.Generated.Operations, :mcp_auth_start},
      url: "/mcp/#{name}/auth",
      method: :post,
      query: query,
      response: [
        {200, {OpenCode.Generated.Operations, :mcp_auth_start_200_json_resp}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  post `/mcp/{name}/connect`

  Connect an MCP server

  ## Options

    * `directory`
    * `workspace`

  """
  @spec mcp_connect(name :: String.t(), opts :: keyword) :: {:ok, boolean} | :error
  def mcp_connect(name, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [name: name],
      call: {OpenCode.Generated.Operations, :mcp_connect},
      url: "/mcp/#{name}/connect",
      method: :post,
      query: query,
      response: [{200, :boolean}],
      opts: opts
    })
  end

  @doc """
  post `/mcp/{name}/disconnect`

  Disconnect an MCP server

  ## Options

    * `directory`
    * `workspace`

  """
  @spec mcp_disconnect(name :: String.t(), opts :: keyword) :: {:ok, boolean} | :error
  def mcp_disconnect(name, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [name: name],
      call: {OpenCode.Generated.Operations, :mcp_disconnect},
      url: "/mcp/#{name}/disconnect",
      method: :post,
      query: query,
      response: [{200, :boolean}],
      opts: opts
    })
  end

  @doc """
  Get MCP status

  Get the status of all Model Context Protocol (MCP) servers.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec mcp_status(opts :: keyword) :: {:ok, map} | :error
  def mcp_status(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :mcp_status},
      url: "/mcp",
      method: :get,
      query: query,
      response: [{200, :map}],
      opts: opts
    })
  end

  @doc """
  delete `/session/{sessionID}/message/{messageID}/part/{partID}`

  Delete a part from a message

  ## Options

    * `directory`
    * `workspace`

  """
  @spec part_delete(
          sessionID :: String.t(),
          messageID :: String.t(),
          partID :: String.t(),
          opts :: keyword
        ) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def part_delete(sessionID, messageID, partID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, messageID: messageID, partID: partID],
      call: {OpenCode.Generated.Operations, :part_delete},
      url: "/session/#{sessionID}/message/#{messageID}/part/#{partID}",
      method: :delete,
      query: query,
      response: [
        {200, :boolean},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  patch `/session/{sessionID}/message/{messageID}/part/{partID}`

  Update a part in a message

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec part_update(
          sessionID :: String.t(),
          messageID :: String.t(),
          partID :: String.t(),
          body ::
            OpenCode.Generated.AgentPart.t()
            | OpenCode.Generated.CompactionPart.t()
            | OpenCode.Generated.FilePart.t()
            | OpenCode.Generated.PatchPart.t()
            | OpenCode.Generated.ReasoningPart.t()
            | OpenCode.Generated.RetryPart.t()
            | OpenCode.Generated.SnapshotPart.t()
            | OpenCode.Generated.StepFinishPart.t()
            | OpenCode.Generated.StepStartPart.t()
            | OpenCode.Generated.SubtaskPart.t()
            | OpenCode.Generated.TextPart.t()
            | OpenCode.Generated.ToolPart.t(),
          opts :: keyword
        ) ::
          {:ok,
           OpenCode.Generated.AgentPart.t()
           | OpenCode.Generated.CompactionPart.t()
           | OpenCode.Generated.FilePart.t()
           | OpenCode.Generated.PatchPart.t()
           | OpenCode.Generated.ReasoningPart.t()
           | OpenCode.Generated.RetryPart.t()
           | OpenCode.Generated.SnapshotPart.t()
           | OpenCode.Generated.StepFinishPart.t()
           | OpenCode.Generated.StepStartPart.t()
           | OpenCode.Generated.SubtaskPart.t()
           | OpenCode.Generated.TextPart.t()
           | OpenCode.Generated.ToolPart.t()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def part_update(sessionID, messageID, partID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, messageID: messageID, partID: partID, body: body],
      call: {OpenCode.Generated.Operations, :part_update},
      url: "/session/#{sessionID}/message/#{messageID}/part/#{partID}",
      body: body,
      method: :patch,
      query: query,
      request: [
        {"application/json",
         {:union,
          [
            {OpenCode.Generated.AgentPart, :t},
            {OpenCode.Generated.CompactionPart, :t},
            {OpenCode.Generated.FilePart, :t},
            {OpenCode.Generated.PatchPart, :t},
            {OpenCode.Generated.ReasoningPart, :t},
            {OpenCode.Generated.RetryPart, :t},
            {OpenCode.Generated.SnapshotPart, :t},
            {OpenCode.Generated.StepFinishPart, :t},
            {OpenCode.Generated.StepStartPart, :t},
            {OpenCode.Generated.SubtaskPart, :t},
            {OpenCode.Generated.TextPart, :t},
            {OpenCode.Generated.ToolPart, :t}
          ]}}
      ],
      response: [
        {200,
         {:union,
          [
            {OpenCode.Generated.AgentPart, :t},
            {OpenCode.Generated.CompactionPart, :t},
            {OpenCode.Generated.FilePart, :t},
            {OpenCode.Generated.PatchPart, :t},
            {OpenCode.Generated.ReasoningPart, :t},
            {OpenCode.Generated.RetryPart, :t},
            {OpenCode.Generated.SnapshotPart, :t},
            {OpenCode.Generated.StepFinishPart, :t},
            {OpenCode.Generated.StepStartPart, :t},
            {OpenCode.Generated.SubtaskPart, :t},
            {OpenCode.Generated.TextPart, :t},
            {OpenCode.Generated.ToolPart, :t}
          ]}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
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
  @spec path_get(opts :: keyword) :: {:ok, OpenCode.Generated.Path.t()} | :error
  def path_get(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :path_get},
      url: "/path",
      method: :get,
      query: query,
      response: [{200, {OpenCode.Generated.Path, :t}}],
      opts: opts
    })
  end

  @doc """
  List pending permissions

  Get all pending permission requests across all sessions.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec permission_list(opts :: keyword) ::
          {:ok, [OpenCode.Generated.PermissionRequest.t()]} | :error
  def permission_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :permission_list},
      url: "/permission",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.PermissionRequest, :t}]}],
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
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def permission_reply(requestID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [requestID: requestID, body: body],
      call: {OpenCode.Generated.Operations, :permission_reply},
      url: "/permission/#{requestID}/reply",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, :boolean},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Respond to permission

  Approve or deny a permission request from the AI assistant.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec permission_respond(
          sessionID :: String.t(),
          permissionID :: String.t(),
          body :: map,
          opts :: keyword
        ) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def permission_respond(sessionID, permissionID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, permissionID: permissionID, body: body],
      call: {OpenCode.Generated.Operations, :permission_respond},
      url: "/session/#{sessionID}/permissions/#{permissionID}",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, :boolean},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get current project

  Retrieve the currently active project that OpenCode is working with.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec project_current(opts :: keyword) :: {:ok, OpenCode.Generated.Project.t()} | :error
  def project_current(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :project_current},
      url: "/project/current",
      method: :get,
      query: query,
      response: [{200, {OpenCode.Generated.Project, :t}}],
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
  @spec project_init_git(opts :: keyword) :: {:ok, OpenCode.Generated.Project.t()} | :error
  def project_init_git(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :project_init_git},
      url: "/project/git/init",
      method: :post,
      query: query,
      response: [{200, {OpenCode.Generated.Project, :t}}],
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
  @spec project_list(opts :: keyword) :: {:ok, [OpenCode.Generated.Project.t()]} | :error
  def project_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :project_list},
      url: "/project",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.Project, :t}]}],
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
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def project_update(projectID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [projectID: projectID, body: body],
      call: {OpenCode.Generated.Operations, :project_update},
      url: "/project/#{projectID}",
      body: body,
      method: :patch,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Project, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get provider auth methods

  Retrieve available authentication methods for all AI providers.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec provider_auth(opts :: keyword) :: {:ok, map} | :error
  def provider_auth(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :provider_auth},
      url: "/provider/auth",
      method: :get,
      query: query,
      response: [{200, :map}],
      opts: opts
    })
  end

  @type provider_list_200_json_resp :: %{
          all: [OpenCode.Generated.Operations.provider_list_200_json_resp_all()],
          connected: [String.t()],
          default: map
        }

  @type provider_list_200_json_resp_all :: %{
          api: String.t() | nil,
          env: [String.t()],
          id: String.t(),
          models: map,
          name: String.t(),
          npm: String.t() | nil
        }

  @doc """
  List providers

  Get a list of all available AI providers, including both available and connected ones.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec provider_list(opts :: keyword) ::
          {:ok, OpenCode.Generated.Operations.provider_list_200_json_resp()} | :error
  def provider_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :provider_list},
      url: "/provider",
      method: :get,
      query: query,
      response: [{200, {OpenCode.Generated.Operations, :provider_list_200_json_resp}}],
      opts: opts
    })
  end

  @doc """
  OAuth authorize

  Initiate OAuth authorization for a specific AI provider to get an authorization URL.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec provider_oauth_authorize(providerID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.ProviderAuthAuthorization.t()}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def provider_oauth_authorize(providerID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [providerID: providerID, body: body],
      call: {OpenCode.Generated.Operations, :provider_oauth_authorize},
      url: "/provider/#{providerID}/oauth/authorize",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.ProviderAuthAuthorization, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  OAuth callback

  Handle the OAuth callback from a provider after user authorization.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec provider_oauth_callback(providerID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, boolean} | {:error, OpenCode.Generated.BadRequestError.t()}
  def provider_oauth_callback(providerID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [providerID: providerID, body: body],
      call: {OpenCode.Generated.Operations, :provider_oauth_callback},
      url: "/provider/#{providerID}/oauth/callback",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [{200, :boolean}, {400, {OpenCode.Generated.BadRequestError, :t}}],
      opts: opts
    })
  end

  @doc """
  Connect to PTY session

  Establish a WebSocket connection to interact with a pseudo-terminal (PTY) session in real-time.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec pty_connect(ptyID :: String.t(), opts :: keyword) ::
          {:ok, boolean} | {:error, OpenCode.Generated.NotFoundError.t()}
  def pty_connect(ptyID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [ptyID: ptyID],
      call: {OpenCode.Generated.Operations, :pty_connect},
      url: "/pty/#{ptyID}/connect",
      method: :get,
      query: query,
      response: [{200, :boolean}, {404, {OpenCode.Generated.NotFoundError, :t}}],
      opts: opts
    })
  end

  @doc """
  Create PTY session

  Create a new pseudo-terminal (PTY) session for running shell commands and processes.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec pty_create(body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Pty.t()} | {:error, OpenCode.Generated.BadRequestError.t()}
  def pty_create(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Operations, :pty_create},
      url: "/pty",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Pty, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get PTY session

  Retrieve detailed information about a specific pseudo-terminal (PTY) session.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec pty_get(ptyID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Pty.t()} | {:error, OpenCode.Generated.NotFoundError.t()}
  def pty_get(ptyID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [ptyID: ptyID],
      call: {OpenCode.Generated.Operations, :pty_get},
      url: "/pty/#{ptyID}",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Pty, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  List PTY sessions

  Get a list of all active pseudo-terminal (PTY) sessions managed by OpenCode.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec pty_list(opts :: keyword) :: {:ok, [OpenCode.Generated.Pty.t()]} | :error
  def pty_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :pty_list},
      url: "/pty",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.Pty, :t}]}],
      opts: opts
    })
  end

  @doc """
  Remove PTY session

  Remove and terminate a specific pseudo-terminal (PTY) session.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec pty_remove(ptyID :: String.t(), opts :: keyword) ::
          {:ok, boolean} | {:error, OpenCode.Generated.NotFoundError.t()}
  def pty_remove(ptyID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [ptyID: ptyID],
      call: {OpenCode.Generated.Operations, :pty_remove},
      url: "/pty/#{ptyID}",
      method: :delete,
      query: query,
      response: [{200, :boolean}, {404, {OpenCode.Generated.NotFoundError, :t}}],
      opts: opts
    })
  end

  @doc """
  Update PTY session

  Update properties of an existing pseudo-terminal (PTY) session.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec pty_update(ptyID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Pty.t()} | {:error, OpenCode.Generated.BadRequestError.t()}
  def pty_update(ptyID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [ptyID: ptyID, body: body],
      call: {OpenCode.Generated.Operations, :pty_update},
      url: "/pty/#{ptyID}",
      body: body,
      method: :put,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Pty, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  List pending questions

  Get all pending question requests across all sessions.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec question_list(opts :: keyword) :: {:ok, [OpenCode.Generated.QuestionRequest.t()]} | :error
  def question_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :question_list},
      url: "/question",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.QuestionRequest, :t}]}],
      opts: opts
    })
  end

  @doc """
  Reject question request

  Reject a question request from the AI assistant.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec question_reject(requestID :: String.t(), opts :: keyword) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def question_reject(requestID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [requestID: requestID],
      call: {OpenCode.Generated.Operations, :question_reject},
      url: "/question/#{requestID}/reject",
      method: :post,
      query: query,
      response: [
        {200, :boolean},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Reply to question request

  Provide answers to a question request from the AI assistant.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec question_reply(requestID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def question_reply(requestID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [requestID: requestID, body: body],
      call: {OpenCode.Generated.Operations, :question_reply},
      url: "/question/#{requestID}/reply",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, :boolean},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Abort session

  Abort an active session and stop any ongoing AI processing or command execution.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec session_abort(sessionID :: String.t(), opts :: keyword) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_abort(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Operations, :session_abort},
      url: "/session/#{sessionID}/abort",
      method: :post,
      query: query,
      response: [
        {200, :boolean},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @type session_command_200_json_resp :: %{
          info: OpenCode.Generated.AssistantMessage.t(),
          parts: [
            OpenCode.Generated.AgentPart.t()
            | OpenCode.Generated.CompactionPart.t()
            | OpenCode.Generated.FilePart.t()
            | OpenCode.Generated.PatchPart.t()
            | OpenCode.Generated.ReasoningPart.t()
            | OpenCode.Generated.RetryPart.t()
            | OpenCode.Generated.SnapshotPart.t()
            | OpenCode.Generated.StepFinishPart.t()
            | OpenCode.Generated.StepStartPart.t()
            | OpenCode.Generated.SubtaskPart.t()
            | OpenCode.Generated.TextPart.t()
            | OpenCode.Generated.ToolPart.t()
          ]
        }

  @doc """
  Send command

  Send a new command to a session for execution by the AI assistant.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec session_command(sessionID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Operations.session_command_200_json_resp()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_command(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Operations, :session_command},
      url: "/session/#{sessionID}/command",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Operations, :session_command_200_json_resp}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create session

  Create a new OpenCode session for interacting with AI assistants and managing conversations.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec session_create(body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Session.t()} | {:error, OpenCode.Generated.BadRequestError.t()}
  def session_create(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Operations, :session_create},
      url: "/session",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Session, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Delete session

  Delete a session and permanently remove all associated data, including messages and history.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec session_delete(sessionID :: String.t(), opts :: keyword) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_delete(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Operations, :session_delete},
      url: "/session/#{sessionID}",
      method: :delete,
      query: query,
      response: [
        {200, :boolean},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Delete message

  Permanently delete a specific message (and all of its parts) from a session. This does not revert any file changes that may have been made while processing the message.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec session_delete_message(sessionID :: String.t(), messageID :: String.t(), opts :: keyword) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_delete_message(sessionID, messageID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, messageID: messageID],
      call: {OpenCode.Generated.Operations, :session_delete_message},
      url: "/session/#{sessionID}/message/#{messageID}",
      method: :delete,
      query: query,
      response: [
        {200, :boolean},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get message diff

  Get the file changes (diff) that resulted from a specific user message in the session.

  ## Options

    * `directory`
    * `workspace`
    * `messageID`

  """
  @spec session_diff(sessionID :: String.t(), opts :: keyword) ::
          {:ok, [OpenCode.Generated.FileDiff.t()]} | :error
  def session_diff(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :messageID, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Operations, :session_diff},
      url: "/session/#{sessionID}/diff",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.FileDiff, :t}]}],
      opts: opts
    })
  end

  @doc """
  Fork session

  Create a new session by forking an existing session at a specific message point.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec session_fork(sessionID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Session.t()} | :error
  def session_fork(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Operations, :session_fork},
      url: "/session/#{sessionID}/fork",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [{200, {OpenCode.Generated.Session, :t}}],
      opts: opts
    })
  end

  @doc """
  Initialize session

  Analyze the current application and create an AGENTS.md file with project-specific agent configurations.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec session_init(sessionID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_init(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Operations, :session_init},
      url: "/session/#{sessionID}/init",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, :boolean},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  List sessions

  Get a list of all OpenCode sessions, sorted by most recently updated.

  ## Options

    * `directory`: Filter sessions by project directory
    * `workspace`
    * `roots`: Only return root sessions (no parentID)
    * `start`: Filter sessions updated on or after this timestamp (milliseconds since epoch)
    * `search`: Filter sessions by title (case-insensitive)
    * `limit`: Maximum number of sessions to return

  """
  @spec session_list(opts :: keyword) :: {:ok, [OpenCode.Generated.Session.t()]} | :error
  def session_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :limit, :roots, :search, :start, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :session_list},
      url: "/session",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.Session, :t}]}],
      opts: opts
    })
  end

  @type session_message_200_json_resp :: %{
          info: OpenCode.Generated.AssistantMessage.t() | OpenCode.Generated.UserMessage.t(),
          parts: [
            OpenCode.Generated.AgentPart.t()
            | OpenCode.Generated.CompactionPart.t()
            | OpenCode.Generated.FilePart.t()
            | OpenCode.Generated.PatchPart.t()
            | OpenCode.Generated.ReasoningPart.t()
            | OpenCode.Generated.RetryPart.t()
            | OpenCode.Generated.SnapshotPart.t()
            | OpenCode.Generated.StepFinishPart.t()
            | OpenCode.Generated.StepStartPart.t()
            | OpenCode.Generated.SubtaskPart.t()
            | OpenCode.Generated.TextPart.t()
            | OpenCode.Generated.ToolPart.t()
          ]
        }

  @doc """
  Get message

  Retrieve a specific message from a session by its message ID.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec session_message(sessionID :: String.t(), messageID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Operations.session_message_200_json_resp()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_message(sessionID, messageID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, messageID: messageID],
      call: {OpenCode.Generated.Operations, :session_message},
      url: "/session/#{sessionID}/message/#{messageID}",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Operations, :session_message_200_json_resp}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @type session_messages_200_json_resp :: %{
          info: OpenCode.Generated.AssistantMessage.t() | OpenCode.Generated.UserMessage.t(),
          parts: [
            OpenCode.Generated.AgentPart.t()
            | OpenCode.Generated.CompactionPart.t()
            | OpenCode.Generated.FilePart.t()
            | OpenCode.Generated.PatchPart.t()
            | OpenCode.Generated.ReasoningPart.t()
            | OpenCode.Generated.RetryPart.t()
            | OpenCode.Generated.SnapshotPart.t()
            | OpenCode.Generated.StepFinishPart.t()
            | OpenCode.Generated.StepStartPart.t()
            | OpenCode.Generated.SubtaskPart.t()
            | OpenCode.Generated.TextPart.t()
            | OpenCode.Generated.ToolPart.t()
          ]
        }

  @doc """
  Get session messages

  Retrieve all messages in a session, including user prompts and AI responses.

  ## Options

    * `directory`
    * `workspace`
    * `limit`

  """
  @spec session_messages(sessionID :: String.t(), opts :: keyword) ::
          {:ok, [OpenCode.Generated.Operations.session_messages_200_json_resp()]}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_messages(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :limit, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Operations, :session_messages},
      url: "/session/#{sessionID}/message",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.Operations, :session_messages_200_json_resp}]},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @type session_prompt_200_json_resp :: %{
          info: OpenCode.Generated.AssistantMessage.t(),
          parts: [
            OpenCode.Generated.AgentPart.t()
            | OpenCode.Generated.CompactionPart.t()
            | OpenCode.Generated.FilePart.t()
            | OpenCode.Generated.PatchPart.t()
            | OpenCode.Generated.ReasoningPart.t()
            | OpenCode.Generated.RetryPart.t()
            | OpenCode.Generated.SnapshotPart.t()
            | OpenCode.Generated.StepFinishPart.t()
            | OpenCode.Generated.StepStartPart.t()
            | OpenCode.Generated.SubtaskPart.t()
            | OpenCode.Generated.TextPart.t()
            | OpenCode.Generated.ToolPart.t()
          ]
        }

  @doc """
  Send message

  Create and send a new message to a session, streaming the AI response.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec session_prompt(sessionID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Operations.session_prompt_200_json_resp()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_prompt(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Operations, :session_prompt},
      url: "/session/#{sessionID}/message",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Operations, :session_prompt_200_json_resp}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Send async message

  Create and send a new message to a session asynchronously, starting the session if needed and returning immediately.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec session_prompt_async(sessionID :: String.t(), body :: map, opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_prompt_async(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Operations, :session_prompt_async},
      url: "/session/#{sessionID}/prompt_async",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {204, :null},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Revert message

  Revert a specific message in a session, undoing its effects and restoring the previous state.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec session_revert(sessionID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Session.t()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_revert(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Operations, :session_revert},
      url: "/session/#{sessionID}/revert",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Session, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Share session

  Create a shareable link for a session, allowing others to view the conversation.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec session_share(sessionID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Session.t()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_share(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Operations, :session_share},
      url: "/session/#{sessionID}/share",
      method: :post,
      query: query,
      response: [
        {200, {OpenCode.Generated.Session, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Run shell command

  Execute a shell command within the session context and return the AI's response.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec session_shell(sessionID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.AssistantMessage.t()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_shell(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Operations, :session_shell},
      url: "/session/#{sessionID}/shell",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.AssistantMessage, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get session status

  Retrieve the current status of all sessions, including active, idle, and completed states.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec session_status(opts :: keyword) ::
          {:ok, map} | {:error, OpenCode.Generated.BadRequestError.t()}
  def session_status(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :session_status},
      url: "/session/status",
      method: :get,
      query: query,
      response: [{200, :map}, {400, {OpenCode.Generated.BadRequestError, :t}}],
      opts: opts
    })
  end

  @doc """
  Summarize session

  Generate a concise summary of the session using AI compaction to preserve key information.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec session_summarize(sessionID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_summarize(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Operations, :session_summarize},
      url: "/session/#{sessionID}/summarize",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, :boolean},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get session todos

  Retrieve the todo list associated with a specific session, showing tasks and action items.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec session_todo(sessionID :: String.t(), opts :: keyword) ::
          {:ok, [OpenCode.Generated.Todo.t()]}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_todo(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Operations, :session_todo},
      url: "/session/#{sessionID}/todo",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.Todo, :t}]},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Restore reverted messages

  Restore all previously reverted messages in a session.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec session_unrevert(sessionID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Session.t()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_unrevert(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Operations, :session_unrevert},
      url: "/session/#{sessionID}/unrevert",
      method: :post,
      query: query,
      response: [
        {200, {OpenCode.Generated.Session, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Unshare session

  Remove the shareable link for a session, making it private again.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec session_unshare(sessionID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Session.t()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_unshare(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Operations, :session_unshare},
      url: "/session/#{sessionID}/share",
      method: :delete,
      query: query,
      response: [
        {200, {OpenCode.Generated.Session, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update session

  Update properties of an existing session, such as title or other metadata.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec session_update(sessionID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Session.t()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_update(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Operations, :session_update},
      url: "/session/#{sessionID}",
      body: body,
      method: :patch,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Session, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
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
      call: {OpenCode.Generated.Operations, :tool_ids},
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
      call: {OpenCode.Generated.Operations, :tool_list},
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
  Append TUI prompt

  Append prompt to the TUI

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec tui_append_prompt(body :: map, opts :: keyword) ::
          {:ok, boolean} | {:error, OpenCode.Generated.BadRequestError.t()}
  def tui_append_prompt(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Operations, :tui_append_prompt},
      url: "/tui/append-prompt",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [{200, :boolean}, {400, {OpenCode.Generated.BadRequestError, :t}}],
      opts: opts
    })
  end

  @doc """
  Clear TUI prompt

  Clear the prompt

  ## Options

    * `directory`
    * `workspace`

  """
  @spec tui_clear_prompt(opts :: keyword) :: {:ok, boolean} | :error
  def tui_clear_prompt(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :tui_clear_prompt},
      url: "/tui/clear-prompt",
      method: :post,
      query: query,
      response: [{200, :boolean}],
      opts: opts
    })
  end

  @type tui_control_next_200_json_resp :: %{body: map, path: String.t()}

  @doc """
  Get next TUI request

  Retrieve the next TUI (Terminal User Interface) request from the queue for processing.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec tui_control_next(opts :: keyword) ::
          {:ok, OpenCode.Generated.Operations.tui_control_next_200_json_resp()} | :error
  def tui_control_next(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :tui_control_next},
      url: "/tui/control/next",
      method: :get,
      query: query,
      response: [{200, {OpenCode.Generated.Operations, :tui_control_next_200_json_resp}}],
      opts: opts
    })
  end

  @doc """
  Submit TUI response

  Submit a response to the TUI request queue to complete a pending request.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec tui_control_response(body :: map, opts :: keyword) :: {:ok, boolean} | :error
  def tui_control_response(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Operations, :tui_control_response},
      url: "/tui/control/response",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [{200, :boolean}],
      opts: opts
    })
  end

  @doc """
  Execute TUI command

  Execute a TUI command (e.g. agent_cycle)

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec tui_execute_command(body :: map, opts :: keyword) ::
          {:ok, boolean} | {:error, OpenCode.Generated.BadRequestError.t()}
  def tui_execute_command(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Operations, :tui_execute_command},
      url: "/tui/execute-command",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [{200, :boolean}, {400, {OpenCode.Generated.BadRequestError, :t}}],
      opts: opts
    })
  end

  @doc """
  Open help dialog

  Open the help dialog in the TUI to display user assistance information.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec tui_open_help(opts :: keyword) :: {:ok, boolean} | :error
  def tui_open_help(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :tui_open_help},
      url: "/tui/open-help",
      method: :post,
      query: query,
      response: [{200, :boolean}],
      opts: opts
    })
  end

  @doc """
  Open models dialog

  Open the model dialog

  ## Options

    * `directory`
    * `workspace`

  """
  @spec tui_open_models(opts :: keyword) :: {:ok, boolean} | :error
  def tui_open_models(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :tui_open_models},
      url: "/tui/open-models",
      method: :post,
      query: query,
      response: [{200, :boolean}],
      opts: opts
    })
  end

  @doc """
  Open sessions dialog

  Open the session dialog

  ## Options

    * `directory`
    * `workspace`

  """
  @spec tui_open_sessions(opts :: keyword) :: {:ok, boolean} | :error
  def tui_open_sessions(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :tui_open_sessions},
      url: "/tui/open-sessions",
      method: :post,
      query: query,
      response: [{200, :boolean}],
      opts: opts
    })
  end

  @doc """
  Open themes dialog

  Open the theme dialog

  ## Options

    * `directory`
    * `workspace`

  """
  @spec tui_open_themes(opts :: keyword) :: {:ok, boolean} | :error
  def tui_open_themes(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :tui_open_themes},
      url: "/tui/open-themes",
      method: :post,
      query: query,
      response: [{200, :boolean}],
      opts: opts
    })
  end

  @doc """
  Publish TUI event

  Publish a TUI event

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec tui_publish(
          body ::
            OpenCode.Generated.EventTuiCommandExecute.t()
            | OpenCode.Generated.EventTuiPromptAppend.t()
            | OpenCode.Generated.EventTuiSessionSelect.t()
            | OpenCode.Generated.EventTuiToastShow.t(),
          opts :: keyword
        ) :: {:ok, boolean} | {:error, OpenCode.Generated.BadRequestError.t()}
  def tui_publish(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Operations, :tui_publish},
      url: "/tui/publish",
      body: body,
      method: :post,
      query: query,
      request: [
        {"application/json",
         {:union,
          [
            {OpenCode.Generated.EventTuiCommandExecute, :t},
            {OpenCode.Generated.EventTuiPromptAppend, :t},
            {OpenCode.Generated.EventTuiSessionSelect, :t},
            {OpenCode.Generated.EventTuiToastShow, :t}
          ]}}
      ],
      response: [{200, :boolean}, {400, {OpenCode.Generated.BadRequestError, :t}}],
      opts: opts
    })
  end

  @doc """
  Select session

  Navigate the TUI to display the specified session.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec tui_select_session(body :: map, opts :: keyword) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def tui_select_session(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Operations, :tui_select_session},
      url: "/tui/select-session",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, :boolean},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Show TUI toast

  Show a toast notification in the TUI

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec tui_show_toast(body :: map, opts :: keyword) :: {:ok, boolean} | :error
  def tui_show_toast(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Operations, :tui_show_toast},
      url: "/tui/show-toast",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [{200, :boolean}],
      opts: opts
    })
  end

  @doc """
  Submit TUI prompt

  Submit the prompt

  ## Options

    * `directory`
    * `workspace`

  """
  @spec tui_submit_prompt(opts :: keyword) :: {:ok, boolean} | :error
  def tui_submit_prompt(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Operations, :tui_submit_prompt},
      url: "/tui/submit-prompt",
      method: :post,
      query: query,
      response: [{200, :boolean}],
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
      call: {OpenCode.Generated.Operations, :vcs_get},
      url: "/vcs",
      method: :get,
      query: query,
      response: [{200, {OpenCode.Generated.VcsInfo, :t}}],
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
      call: {OpenCode.Generated.Operations, :worktree_create},
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
      call: {OpenCode.Generated.Operations, :worktree_list},
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
      call: {OpenCode.Generated.Operations, :worktree_remove},
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
      call: {OpenCode.Generated.Operations, :worktree_reset},
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
  def __fields__(:app_skills_200_json_resp) do
    [content: :string, description: :string, location: :string, name: :string]
  end

  def __fields__(:config_providers_200_json_resp) do
    [default: :map, providers: [{OpenCode.Generated.Provider, :t}]]
  end

  def __fields__(:find_text_200_json_resp) do
    [
      absolute_offset: :number,
      line_number: :number,
      lines: {OpenCode.Generated.Operations, :find_text_200_json_resp_lines},
      path: {OpenCode.Generated.Operations, :find_text_200_json_resp_path},
      submatches: [{OpenCode.Generated.Operations, :find_text_200_json_resp_submatches}]
    ]
  end

  def __fields__(:find_text_200_json_resp_lines) do
    [text: :string]
  end

  def __fields__(:find_text_200_json_resp_path) do
    [text: :string]
  end

  def __fields__(:find_text_200_json_resp_submatches) do
    [
      end: :number,
      match: {OpenCode.Generated.Operations, :find_text_200_json_resp_submatches_match},
      start: :number
    ]
  end

  def __fields__(:find_text_200_json_resp_submatches_match) do
    [text: :string]
  end

  def __fields__(:global_health_200_json_resp) do
    [healthy: {:const, true}, version: :string]
  end

  def __fields__(:mcp_auth_remove_200_json_resp) do
    [success: {:const, true}]
  end

  def __fields__(:mcp_auth_start_200_json_resp) do
    [authorization_url: :string]
  end

  def __fields__(:provider_list_200_json_resp) do
    [
      all: [{OpenCode.Generated.Operations, :provider_list_200_json_resp_all}],
      connected: [:string],
      default: :map
    ]
  end

  def __fields__(:provider_list_200_json_resp_all) do
    [api: :string, env: [:string], id: :string, models: :map, name: :string, npm: :string]
  end

  def __fields__(:session_command_200_json_resp) do
    [
      info: {OpenCode.Generated.AssistantMessage, :t},
      parts: [
        union: [
          {OpenCode.Generated.AgentPart, :t},
          {OpenCode.Generated.CompactionPart, :t},
          {OpenCode.Generated.FilePart, :t},
          {OpenCode.Generated.PatchPart, :t},
          {OpenCode.Generated.ReasoningPart, :t},
          {OpenCode.Generated.RetryPart, :t},
          {OpenCode.Generated.SnapshotPart, :t},
          {OpenCode.Generated.StepFinishPart, :t},
          {OpenCode.Generated.StepStartPart, :t},
          {OpenCode.Generated.SubtaskPart, :t},
          {OpenCode.Generated.TextPart, :t},
          {OpenCode.Generated.ToolPart, :t}
        ]
      ]
    ]
  end

  def __fields__(:session_message_200_json_resp) do
    [
      info:
        {:union,
         [{OpenCode.Generated.AssistantMessage, :t}, {OpenCode.Generated.UserMessage, :t}]},
      parts: [
        union: [
          {OpenCode.Generated.AgentPart, :t},
          {OpenCode.Generated.CompactionPart, :t},
          {OpenCode.Generated.FilePart, :t},
          {OpenCode.Generated.PatchPart, :t},
          {OpenCode.Generated.ReasoningPart, :t},
          {OpenCode.Generated.RetryPart, :t},
          {OpenCode.Generated.SnapshotPart, :t},
          {OpenCode.Generated.StepFinishPart, :t},
          {OpenCode.Generated.StepStartPart, :t},
          {OpenCode.Generated.SubtaskPart, :t},
          {OpenCode.Generated.TextPart, :t},
          {OpenCode.Generated.ToolPart, :t}
        ]
      ]
    ]
  end

  def __fields__(:session_messages_200_json_resp) do
    [
      info:
        {:union,
         [{OpenCode.Generated.AssistantMessage, :t}, {OpenCode.Generated.UserMessage, :t}]},
      parts: [
        union: [
          {OpenCode.Generated.AgentPart, :t},
          {OpenCode.Generated.CompactionPart, :t},
          {OpenCode.Generated.FilePart, :t},
          {OpenCode.Generated.PatchPart, :t},
          {OpenCode.Generated.ReasoningPart, :t},
          {OpenCode.Generated.RetryPart, :t},
          {OpenCode.Generated.SnapshotPart, :t},
          {OpenCode.Generated.StepFinishPart, :t},
          {OpenCode.Generated.StepStartPart, :t},
          {OpenCode.Generated.SubtaskPart, :t},
          {OpenCode.Generated.TextPart, :t},
          {OpenCode.Generated.ToolPart, :t}
        ]
      ]
    ]
  end

  def __fields__(:session_prompt_200_json_resp) do
    [
      info: {OpenCode.Generated.AssistantMessage, :t},
      parts: [
        union: [
          {OpenCode.Generated.AgentPart, :t},
          {OpenCode.Generated.CompactionPart, :t},
          {OpenCode.Generated.FilePart, :t},
          {OpenCode.Generated.PatchPart, :t},
          {OpenCode.Generated.ReasoningPart, :t},
          {OpenCode.Generated.RetryPart, :t},
          {OpenCode.Generated.SnapshotPart, :t},
          {OpenCode.Generated.StepFinishPart, :t},
          {OpenCode.Generated.StepStartPart, :t},
          {OpenCode.Generated.SubtaskPart, :t},
          {OpenCode.Generated.TextPart, :t},
          {OpenCode.Generated.ToolPart, :t}
        ]
      ]
    ]
  end

  def __fields__(:tui_control_next_200_json_resp) do
    [body: :map, path: :string]
  end
end
