defmodule OpenCode.Generated.ConfigExperimental do
  @moduledoc """
  Provides struct and type for a ConfigExperimental
  """

  @type t :: %__MODULE__{
          batch_tool: boolean | nil,
          continue_loop_on_deny: boolean | nil,
          disable_paste_summary: boolean | nil,
          mcp_timeout: integer | nil,
          open_telemetry: boolean | nil,
          primary_tools: [String.t()] | nil
        }

  defstruct [
    :batch_tool,
    :continue_loop_on_deny,
    :disable_paste_summary,
    :mcp_timeout,
    :open_telemetry,
    :primary_tools
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      batch_tool: :boolean,
      continue_loop_on_deny: :boolean,
      disable_paste_summary: :boolean,
      mcp_timeout: :integer,
      open_telemetry: :boolean,
      primary_tools: [:string]
    ]
  end
end
