defmodule OpenCode.Generated.Config do
  @moduledoc """
  Provides struct and type for a Config
  """

  @type t :: %__MODULE__{
          agent: OpenCode.Generated.ConfigAgent.t() | nil,
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
          schema: String.t() | nil,
          server: OpenCode.Generated.ServerConfig.t() | nil,
          share: String.t() | nil,
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
    :schema,
    :server,
    :share,
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

  def __fields__(:t) do
    [
      agent: {OpenCode.Generated.ConfigAgent, :t},
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
      schema: :string,
      server: {OpenCode.Generated.ServerConfig, :t},
      share: {:enum, ["manual", "auto", "disabled"]},
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
