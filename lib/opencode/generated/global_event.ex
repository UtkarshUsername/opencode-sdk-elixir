defmodule OpenCode.Generated.GlobalEvent do
  @moduledoc """
  Provides struct and type for a GlobalEvent
  """

  @type t :: %__MODULE__{
          directory: String.t(),
          payload:
            OpenCode.Generated.EventAccountAdded.t()
            | OpenCode.Generated.EventAccountRemoved.t()
            | OpenCode.Generated.EventAccountSwitched.t()
            | OpenCode.Generated.EventCatalogModelUpdated.t()
            | OpenCode.Generated.EventCommandExecuted.t()
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
            | OpenCode.Generated.EventModelsDevRefreshed.t()
            | OpenCode.Generated.EventPermissionAsked.t()
            | OpenCode.Generated.EventPermissionReplied.t()
            | OpenCode.Generated.EventPluginAdded.t()
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
            | OpenCode.Generated.EventSessionNextAgentSwitched.t()
            | OpenCode.Generated.EventSessionNextCompactionDelta.t()
            | OpenCode.Generated.EventSessionNextCompactionEnded.t()
            | OpenCode.Generated.EventSessionNextCompactionStarted.t()
            | OpenCode.Generated.EventSessionNextModelSwitched.t()
            | OpenCode.Generated.EventSessionNextPrompted.t()
            | OpenCode.Generated.EventSessionNextReasoningDelta.t()
            | OpenCode.Generated.EventSessionNextReasoningEnded.t()
            | OpenCode.Generated.EventSessionNextReasoningStarted.t()
            | OpenCode.Generated.EventSessionNextRetried.t()
            | OpenCode.Generated.EventSessionNextShellEnded.t()
            | OpenCode.Generated.EventSessionNextShellStarted.t()
            | OpenCode.Generated.EventSessionNextStepEnded.t()
            | OpenCode.Generated.EventSessionNextStepFailed.t()
            | OpenCode.Generated.EventSessionNextStepStarted.t()
            | OpenCode.Generated.EventSessionNextSynthetic.t()
            | OpenCode.Generated.EventSessionNextTextDelta.t()
            | OpenCode.Generated.EventSessionNextTextEnded.t()
            | OpenCode.Generated.EventSessionNextTextStarted.t()
            | OpenCode.Generated.EventSessionNextToolCalled.t()
            | OpenCode.Generated.EventSessionNextToolFailed.t()
            | OpenCode.Generated.EventSessionNextToolInputDelta.t()
            | OpenCode.Generated.EventSessionNextToolInputEnded.t()
            | OpenCode.Generated.EventSessionNextToolInputStarted.t()
            | OpenCode.Generated.EventSessionNextToolProgress.t()
            | OpenCode.Generated.EventSessionNextToolSuccess.t()
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
            | OpenCode.Generated.EventWorkspaceStatus.t()
            | OpenCode.Generated.EventWorktreeFailed.t()
            | OpenCode.Generated.EventWorktreeReady.t()
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
            | OpenCode.Generated.SyncEventSessionNextModelSwitched.t()
            | OpenCode.Generated.SyncEventSessionNextPrompted.t()
            | OpenCode.Generated.SyncEventSessionNextReasoningDelta.t()
            | OpenCode.Generated.SyncEventSessionNextReasoningEnded.t()
            | OpenCode.Generated.SyncEventSessionNextReasoningStarted.t()
            | OpenCode.Generated.SyncEventSessionNextRetried.t()
            | OpenCode.Generated.SyncEventSessionNextShellEnded.t()
            | OpenCode.Generated.SyncEventSessionNextShellStarted.t()
            | OpenCode.Generated.SyncEventSessionNextStepEnded.t()
            | OpenCode.Generated.SyncEventSessionNextStepFailed.t()
            | OpenCode.Generated.SyncEventSessionNextStepStarted.t()
            | OpenCode.Generated.SyncEventSessionNextSynthetic.t()
            | OpenCode.Generated.SyncEventSessionNextTextDelta.t()
            | OpenCode.Generated.SyncEventSessionNextTextEnded.t()
            | OpenCode.Generated.SyncEventSessionNextTextStarted.t()
            | OpenCode.Generated.SyncEventSessionNextToolCalled.t()
            | OpenCode.Generated.SyncEventSessionNextToolFailed.t()
            | OpenCode.Generated.SyncEventSessionNextToolInputDelta.t()
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
           {OpenCode.Generated.EventAccountAdded, :t},
           {OpenCode.Generated.EventAccountRemoved, :t},
           {OpenCode.Generated.EventAccountSwitched, :t},
           {OpenCode.Generated.EventCatalogModelUpdated, :t},
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
           {OpenCode.Generated.EventModelsDevRefreshed, :t},
           {OpenCode.Generated.EventPermissionAsked, :t},
           {OpenCode.Generated.EventPermissionReplied, :t},
           {OpenCode.Generated.EventPluginAdded, :t},
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
           {OpenCode.Generated.EventSessionNextAgentSwitched, :t},
           {OpenCode.Generated.EventSessionNextCompactionDelta, :t},
           {OpenCode.Generated.EventSessionNextCompactionEnded, :t},
           {OpenCode.Generated.EventSessionNextCompactionStarted, :t},
           {OpenCode.Generated.EventSessionNextModelSwitched, :t},
           {OpenCode.Generated.EventSessionNextPrompted, :t},
           {OpenCode.Generated.EventSessionNextReasoningDelta, :t},
           {OpenCode.Generated.EventSessionNextReasoningEnded, :t},
           {OpenCode.Generated.EventSessionNextReasoningStarted, :t},
           {OpenCode.Generated.EventSessionNextRetried, :t},
           {OpenCode.Generated.EventSessionNextShellEnded, :t},
           {OpenCode.Generated.EventSessionNextShellStarted, :t},
           {OpenCode.Generated.EventSessionNextStepEnded, :t},
           {OpenCode.Generated.EventSessionNextStepFailed, :t},
           {OpenCode.Generated.EventSessionNextStepStarted, :t},
           {OpenCode.Generated.EventSessionNextSynthetic, :t},
           {OpenCode.Generated.EventSessionNextTextDelta, :t},
           {OpenCode.Generated.EventSessionNextTextEnded, :t},
           {OpenCode.Generated.EventSessionNextTextStarted, :t},
           {OpenCode.Generated.EventSessionNextToolCalled, :t},
           {OpenCode.Generated.EventSessionNextToolFailed, :t},
           {OpenCode.Generated.EventSessionNextToolInputDelta, :t},
           {OpenCode.Generated.EventSessionNextToolInputEnded, :t},
           {OpenCode.Generated.EventSessionNextToolInputStarted, :t},
           {OpenCode.Generated.EventSessionNextToolProgress, :t},
           {OpenCode.Generated.EventSessionNextToolSuccess, :t},
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
           {OpenCode.Generated.EventWorkspaceStatus, :t},
           {OpenCode.Generated.EventWorktreeFailed, :t},
           {OpenCode.Generated.EventWorktreeReady, :t},
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
           {OpenCode.Generated.SyncEventSessionNextModelSwitched, :t},
           {OpenCode.Generated.SyncEventSessionNextPrompted, :t},
           {OpenCode.Generated.SyncEventSessionNextReasoningDelta, :t},
           {OpenCode.Generated.SyncEventSessionNextReasoningEnded, :t},
           {OpenCode.Generated.SyncEventSessionNextReasoningStarted, :t},
           {OpenCode.Generated.SyncEventSessionNextRetried, :t},
           {OpenCode.Generated.SyncEventSessionNextShellEnded, :t},
           {OpenCode.Generated.SyncEventSessionNextShellStarted, :t},
           {OpenCode.Generated.SyncEventSessionNextStepEnded, :t},
           {OpenCode.Generated.SyncEventSessionNextStepFailed, :t},
           {OpenCode.Generated.SyncEventSessionNextStepStarted, :t},
           {OpenCode.Generated.SyncEventSessionNextSynthetic, :t},
           {OpenCode.Generated.SyncEventSessionNextTextDelta, :t},
           {OpenCode.Generated.SyncEventSessionNextTextEnded, :t},
           {OpenCode.Generated.SyncEventSessionNextTextStarted, :t},
           {OpenCode.Generated.SyncEventSessionNextToolCalled, :t},
           {OpenCode.Generated.SyncEventSessionNextToolFailed, :t},
           {OpenCode.Generated.SyncEventSessionNextToolInputDelta, :t},
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
