defmodule OpenCode.Generated.SessionHistory do
  @moduledoc """
  Provides struct and type for a SessionHistory
  """

  @type t :: %__MODULE__{
          data: [
            OpenCode.Generated.SessionNextAgentSwitched.t()
            | OpenCode.Generated.SessionNextCompactionEnded.t()
            | OpenCode.Generated.SessionNextCompactionStarted.t()
            | OpenCode.Generated.SessionNextContextUpdated.t()
            | OpenCode.Generated.SessionNextModelSwitched.t()
            | OpenCode.Generated.SessionNextMoved.t()
            | OpenCode.Generated.SessionNextPromptAdmitted.t()
            | OpenCode.Generated.SessionNextPrompted.t()
            | OpenCode.Generated.SessionNextReasoningEnded.t()
            | OpenCode.Generated.SessionNextReasoningStarted.t()
            | OpenCode.Generated.SessionNextRetried.t()
            | OpenCode.Generated.SessionNextRevertCleared.t()
            | OpenCode.Generated.SessionNextRevertCommitted.t()
            | OpenCode.Generated.SessionNextRevertStaged.t()
            | OpenCode.Generated.SessionNextShellEnded.t()
            | OpenCode.Generated.SessionNextShellStarted.t()
            | OpenCode.Generated.SessionNextStepEnded.t()
            | OpenCode.Generated.SessionNextStepFailed.t()
            | OpenCode.Generated.SessionNextStepStarted.t()
            | OpenCode.Generated.SessionNextSynthetic.t()
            | OpenCode.Generated.SessionNextTextEnded.t()
            | OpenCode.Generated.SessionNextTextStarted.t()
            | OpenCode.Generated.SessionNextToolCalled.t()
            | OpenCode.Generated.SessionNextToolFailed.t()
            | OpenCode.Generated.SessionNextToolInputEnded.t()
            | OpenCode.Generated.SessionNextToolInputStarted.t()
            | OpenCode.Generated.SessionNextToolProgress.t()
            | OpenCode.Generated.SessionNextToolSuccess.t()
          ],
          has_more: boolean
        }

  defstruct [:data, :has_more]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: [
        union: [
          {OpenCode.Generated.SessionNextAgentSwitched, :t},
          {OpenCode.Generated.SessionNextCompactionEnded, :t},
          {OpenCode.Generated.SessionNextCompactionStarted, :t},
          {OpenCode.Generated.SessionNextContextUpdated, :t},
          {OpenCode.Generated.SessionNextModelSwitched, :t},
          {OpenCode.Generated.SessionNextMoved, :t},
          {OpenCode.Generated.SessionNextPromptAdmitted, :t},
          {OpenCode.Generated.SessionNextPrompted, :t},
          {OpenCode.Generated.SessionNextReasoningEnded, :t},
          {OpenCode.Generated.SessionNextReasoningStarted, :t},
          {OpenCode.Generated.SessionNextRetried, :t},
          {OpenCode.Generated.SessionNextRevertCleared, :t},
          {OpenCode.Generated.SessionNextRevertCommitted, :t},
          {OpenCode.Generated.SessionNextRevertStaged, :t},
          {OpenCode.Generated.SessionNextShellEnded, :t},
          {OpenCode.Generated.SessionNextShellStarted, :t},
          {OpenCode.Generated.SessionNextStepEnded, :t},
          {OpenCode.Generated.SessionNextStepFailed, :t},
          {OpenCode.Generated.SessionNextStepStarted, :t},
          {OpenCode.Generated.SessionNextSynthetic, :t},
          {OpenCode.Generated.SessionNextTextEnded, :t},
          {OpenCode.Generated.SessionNextTextStarted, :t},
          {OpenCode.Generated.SessionNextToolCalled, :t},
          {OpenCode.Generated.SessionNextToolFailed, :t},
          {OpenCode.Generated.SessionNextToolInputEnded, :t},
          {OpenCode.Generated.SessionNextToolInputStarted, :t},
          {OpenCode.Generated.SessionNextToolProgress, :t},
          {OpenCode.Generated.SessionNextToolSuccess, :t}
        ]
      ],
      has_more: :boolean
    ]
  end
end
