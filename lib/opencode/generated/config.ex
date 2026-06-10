defmodule OpenCode.Generated.Config do
  @moduledoc """
  Provides API endpoints related to config
  """

  @default_client OpenCode.Client

  @doc """
  Get configuration

  Retrieve the current OpenCode configuration settings and preferences.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec config_get(opts :: keyword) ::
          {:ok, OpenCode.Generated.Config.t()} | {:error, OpenCode.Generated.BadRequestError.t()}
  def config_get(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Config, :config_get},
      url: "/config",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Config, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
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
          {:ok, OpenCode.Generated.Config.config_providers_200_json_resp()}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def config_providers(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Config, :config_providers},
      url: "/config/providers",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Config, :config_providers_200_json_resp}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
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
          {:ok, OpenCode.Generated.Config.t()}
          | {:error,
             OpenCode.Generated.EffectHttpApiErrorBadRequest.t()
             | OpenCode.Generated.InvalidRequestError.t()}
  def config_update(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Config, :config_update},
      url: "/config",
      body: body,
      method: :patch,
      query: query,
      request: [{"application/json", {OpenCode.Generated.Config, :t}}],
      response: [
        {200, {OpenCode.Generated.Config, :t}},
        {400,
         {:union,
          [
            {OpenCode.Generated.EffectHttpApiErrorBadRequest, :t},
            {OpenCode.Generated.InvalidRequestError, :t}
          ]}}
      ],
      opts: opts
    })
  end

  @type t :: %__MODULE__{
          agent: OpenCode.Generated.ConfigAgent.t() | nil,
          attachment: OpenCode.Generated.AttachmentConfig.t() | nil,
          autoshare: boolean | nil,
          autoupdate: boolean | String.t() | nil,
          command: map | nil,
          compaction: OpenCode.Generated.ConfigCompaction.t() | nil,
          default_agent: String.t() | nil,
          disabled_providers: [String.t()] | nil,
          enabled_providers: [String.t()] | nil,
          enterprise: OpenCode.Generated.ConfigEnterprise.t() | nil,
          experimental: OpenCode.Generated.ConfigExperimental.t() | nil,
          formatter: boolean | map | nil,
          instructions: [String.t()] | nil,
          layout: String.t() | nil,
          log_level: String.t() | nil,
          lsp: boolean | map | nil,
          mcp: map | nil,
          mode: OpenCode.Generated.ConfigMode.t() | nil,
          model: String.t() | nil,
          permission: map | String.t() | nil,
          plugin: [String.t() | [any]] | nil,
          provider: map | nil,
          references: map | nil,
          schema: String.t() | nil,
          server: OpenCode.Generated.ServerConfig.t() | nil,
          share: String.t() | nil,
          shell: String.t() | nil,
          skills: OpenCode.Generated.ConfigSkills.t() | nil,
          small_model: String.t() | nil,
          snapshot: boolean | nil,
          tool_output: OpenCode.Generated.ConfigToolOutput.t() | nil,
          tools: map | nil,
          username: String.t() | nil,
          watcher: OpenCode.Generated.ConfigWatcher.t() | nil
        }

  defstruct [
    :agent,
    :attachment,
    :autoshare,
    :autoupdate,
    :command,
    :compaction,
    :default_agent,
    :disabled_providers,
    :enabled_providers,
    :enterprise,
    :experimental,
    :formatter,
    :instructions,
    :layout,
    :log_level,
    :lsp,
    :mcp,
    :mode,
    :model,
    :permission,
    :plugin,
    :provider,
    :references,
    :schema,
    :server,
    :share,
    :shell,
    :skills,
    :small_model,
    :snapshot,
    :tool_output,
    :tools,
    :username,
    :watcher
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:config_providers_200_json_resp) do
    [default: :map, providers: [{OpenCode.Generated.Provider, :t}]]
  end

  def __fields__(:t) do
    [
      agent: {OpenCode.Generated.ConfigAgent, :t},
      attachment: {OpenCode.Generated.AttachmentConfig, :t},
      autoshare: :boolean,
      autoupdate: {:union, [:boolean, const: "notify"]},
      command: :map,
      compaction: {OpenCode.Generated.ConfigCompaction, :t},
      default_agent: :string,
      disabled_providers: [:string],
      enabled_providers: [:string],
      enterprise: {OpenCode.Generated.ConfigEnterprise, :t},
      experimental: {OpenCode.Generated.ConfigExperimental, :t},
      formatter: {:union, [:boolean, :map]},
      instructions: [:string],
      layout: {:enum, ["auto", "stretch"]},
      log_level: {:enum, ["DEBUG", "INFO", "WARN", "ERROR"]},
      lsp: {:union, [:boolean, :map]},
      mcp: :map,
      mode: {OpenCode.Generated.ConfigMode, :t},
      model: :string,
      permission: {:union, [:map, enum: ["ask", "allow", "deny"]]},
      plugin: [union: [:string, [:unknown]]],
      provider: :map,
      references: :map,
      schema: :string,
      server: {OpenCode.Generated.ServerConfig, :t},
      share: {:enum, ["manual", "auto", "disabled"]},
      shell: :string,
      skills: {OpenCode.Generated.ConfigSkills, :t},
      small_model: :string,
      snapshot: :boolean,
      tool_output: {OpenCode.Generated.ConfigToolOutput, :t},
      tools: :map,
      username: :string,
      watcher: {OpenCode.Generated.ConfigWatcher, :t}
    ]
  end
end
