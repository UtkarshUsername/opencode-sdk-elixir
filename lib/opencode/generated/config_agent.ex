defmodule OpenCode.Generated.ConfigAgent do
  @moduledoc """
  Provides struct and type for a ConfigAgent
  """

  @type t :: %__MODULE__{
          build: OpenCode.Generated.AgentConfig.t() | nil,
          compaction: OpenCode.Generated.AgentConfig.t() | nil,
          explore: OpenCode.Generated.AgentConfig.t() | nil,
          general: OpenCode.Generated.AgentConfig.t() | nil,
          plan: OpenCode.Generated.AgentConfig.t() | nil,
          summary: OpenCode.Generated.AgentConfig.t() | nil,
          title: OpenCode.Generated.AgentConfig.t() | nil
        }

  defstruct [:build, :compaction, :explore, :general, :plan, :summary, :title]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      build: {OpenCode.Generated.AgentConfig, :t},
      compaction: {OpenCode.Generated.AgentConfig, :t},
      explore: {OpenCode.Generated.AgentConfig, :t},
      general: {OpenCode.Generated.AgentConfig, :t},
      plan: {OpenCode.Generated.AgentConfig, :t},
      summary: {OpenCode.Generated.AgentConfig, :t},
      title: {OpenCode.Generated.AgentConfig, :t}
    ]
  end
end
