defmodule OpenCode.Generated.SessionMessagesResponse do
  @moduledoc """
  Provides struct and type for a SessionMessagesResponse
  """

  @type t :: %__MODULE__{
          cursor: OpenCode.Generated.SessionMessagesResponseCursor.t(),
          data: [
            OpenCode.Generated.SessionMessageAgentSwitched.t()
            | OpenCode.Generated.SessionMessageAssistant.t()
            | OpenCode.Generated.SessionMessageCompaction.t()
            | OpenCode.Generated.SessionMessageModelSwitched.t()
            | OpenCode.Generated.SessionMessageShell.t()
            | OpenCode.Generated.SessionMessageSynthetic.t()
            | OpenCode.Generated.SessionMessageSystem.t()
            | OpenCode.Generated.SessionMessageUser.t()
          ]
        }

  defstruct [:cursor, :data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cursor: {OpenCode.Generated.SessionMessagesResponseCursor, :t},
      data: [
        union: [
          {OpenCode.Generated.SessionMessageAgentSwitched, :t},
          {OpenCode.Generated.SessionMessageAssistant, :t},
          {OpenCode.Generated.SessionMessageCompaction, :t},
          {OpenCode.Generated.SessionMessageModelSwitched, :t},
          {OpenCode.Generated.SessionMessageShell, :t},
          {OpenCode.Generated.SessionMessageSynthetic, :t},
          {OpenCode.Generated.SessionMessageSystem, :t},
          {OpenCode.Generated.SessionMessageUser, :t}
        ]
      ]
    ]
  end
end
