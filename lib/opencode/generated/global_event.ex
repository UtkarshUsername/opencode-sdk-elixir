defmodule OpenCode.Generated.GlobalEvent do
  @moduledoc """
  Provides struct and type for a GlobalEvent
  """

  @type t :: %__MODULE__{
          directory: String.t(),
          payload:
            OpenCode.Generated.EventServerInstanceDisposed.t()
            | OpenCode.Generated.GlobalEventPayload.t()
            | OpenCode.Generated.SyncEventMessagePartRemoved.t()
            | OpenCode.Generated.SyncEventMessagePartUpdated.t()
            | OpenCode.Generated.SyncEventMessageRemoved.t()
            | OpenCode.Generated.SyncEventMessageUpdated.t()
            | OpenCode.Generated.SyncEventSessionCreated.t()
            | OpenCode.Generated.SyncEventSessionDeleted.t()
            | OpenCode.Generated.SyncEventSessionNextAgentSwitched.t()
            | OpenCode.Generated.SyncEventSessionNextCompactionDelta.t()
            | OpenCode.Generated.SyncEventSessionNextCompactionEnded.t()
            | OpenCode.Generated.SyncEventSessionNextCompactionStarted.t()
            | OpenCode.Generated.SyncEventSessionNextContextUpdated.t()
            | OpenCode.Generated.SyncEventSessionNextModelSwitched.t()
            | OpenCode.Generated.SyncEventSessionNextMoved.t()
            | OpenCode.Generated.SyncEventSessionNextPromptAdmitted.t()
            | OpenCode.Generated.SyncEventSessionNextPromptPromoted.t()
            | OpenCode.Generated.SyncEventSessionNextPrompted.t()
            | OpenCode.Generated.SyncEventSessionNextReasoningEnded.t()
            | OpenCode.Generated.SyncEventSessionNextReasoningStarted.t()
            | OpenCode.Generated.SyncEventSessionNextRetried.t()
            | OpenCode.Generated.SyncEventSessionNextShellEnded.t()
            | OpenCode.Generated.SyncEventSessionNextShellStarted.t()
            | OpenCode.Generated.SyncEventSessionNextStepEnded.t()
            | OpenCode.Generated.SyncEventSessionNextStepFailed.t()
            | OpenCode.Generated.SyncEventSessionNextStepStarted.t()
            | OpenCode.Generated.SyncEventSessionNextSynthetic.t()
            | OpenCode.Generated.SyncEventSessionNextTextEnded.t()
            | OpenCode.Generated.SyncEventSessionNextTextStarted.t()
            | OpenCode.Generated.SyncEventSessionNextToolCalled.t()
            | OpenCode.Generated.SyncEventSessionNextToolFailed.t()
            | OpenCode.Generated.SyncEventSessionNextToolInputEnded.t()
            | OpenCode.Generated.SyncEventSessionNextToolInputStarted.t()
            | OpenCode.Generated.SyncEventSessionNextToolProgress.t()
            | OpenCode.Generated.SyncEventSessionNextToolSuccess.t()
            | OpenCode.Generated.SyncEventSessionUpdated.t(),
          project: String.t() | nil,
          workspace: String.t() | nil
        }

  defstruct [:directory, :payload, :project, :workspace]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      directory: :string,
      payload:
        {:union,
         [
           {OpenCode.Generated.EventServerInstanceDisposed, :t},
           {OpenCode.Generated.GlobalEventPayload, :t},
           {OpenCode.Generated.SyncEventMessagePartRemoved, :t},
           {OpenCode.Generated.SyncEventMessagePartUpdated, :t},
           {OpenCode.Generated.SyncEventMessageRemoved, :t},
           {OpenCode.Generated.SyncEventMessageUpdated, :t},
           {OpenCode.Generated.SyncEventSessionCreated, :t},
           {OpenCode.Generated.SyncEventSessionDeleted, :t},
           {OpenCode.Generated.SyncEventSessionNextAgentSwitched, :t},
           {OpenCode.Generated.SyncEventSessionNextCompactionDelta, :t},
           {OpenCode.Generated.SyncEventSessionNextCompactionEnded, :t},
           {OpenCode.Generated.SyncEventSessionNextCompactionStarted, :t},
           {OpenCode.Generated.SyncEventSessionNextContextUpdated, :t},
           {OpenCode.Generated.SyncEventSessionNextModelSwitched, :t},
           {OpenCode.Generated.SyncEventSessionNextMoved, :t},
           {OpenCode.Generated.SyncEventSessionNextPromptAdmitted, :t},
           {OpenCode.Generated.SyncEventSessionNextPromptPromoted, :t},
           {OpenCode.Generated.SyncEventSessionNextPrompted, :t},
           {OpenCode.Generated.SyncEventSessionNextReasoningEnded, :t},
           {OpenCode.Generated.SyncEventSessionNextReasoningStarted, :t},
           {OpenCode.Generated.SyncEventSessionNextRetried, :t},
           {OpenCode.Generated.SyncEventSessionNextShellEnded, :t},
           {OpenCode.Generated.SyncEventSessionNextShellStarted, :t},
           {OpenCode.Generated.SyncEventSessionNextStepEnded, :t},
           {OpenCode.Generated.SyncEventSessionNextStepFailed, :t},
           {OpenCode.Generated.SyncEventSessionNextStepStarted, :t},
           {OpenCode.Generated.SyncEventSessionNextSynthetic, :t},
           {OpenCode.Generated.SyncEventSessionNextTextEnded, :t},
           {OpenCode.Generated.SyncEventSessionNextTextStarted, :t},
           {OpenCode.Generated.SyncEventSessionNextToolCalled, :t},
           {OpenCode.Generated.SyncEventSessionNextToolFailed, :t},
           {OpenCode.Generated.SyncEventSessionNextToolInputEnded, :t},
           {OpenCode.Generated.SyncEventSessionNextToolInputStarted, :t},
           {OpenCode.Generated.SyncEventSessionNextToolProgress, :t},
           {OpenCode.Generated.SyncEventSessionNextToolSuccess, :t},
           {OpenCode.Generated.SyncEventSessionUpdated, :t}
         ]},
      project: :string,
      workspace: :string
    ]
  end
end
