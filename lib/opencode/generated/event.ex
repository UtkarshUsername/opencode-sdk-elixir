defmodule OpenCode.Generated.Event do
  @moduledoc """
  Provides API endpoint related to event
  """

  @default_client OpenCode.Client

  @doc """
  Subscribe to events

  Get events

  ## Options

    * `directory`
    * `workspace`

  """
  @spec event_subscribe(opts :: keyword) ::
          {:ok,
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
           | OpenCode.Generated.EventPermissionV2Asked.t()
           | OpenCode.Generated.EventPermissionV2Replied.t()
           | OpenCode.Generated.EventPluginAdded.t()
           | OpenCode.Generated.EventProjectDirectoriesUpdated.t()
           | OpenCode.Generated.EventProjectUpdated.t()
           | OpenCode.Generated.EventPtyCreated.t()
           | OpenCode.Generated.EventPtyDeleted.t()
           | OpenCode.Generated.EventPtyExited.t()
           | OpenCode.Generated.EventPtyUpdated.t()
           | OpenCode.Generated.EventQuestionAsked.t()
           | OpenCode.Generated.EventQuestionRejected.t()
           | OpenCode.Generated.EventQuestionReplied.t()
           | OpenCode.Generated.EventQuestionV2Asked.t()
           | OpenCode.Generated.EventQuestionV2Rejected.t()
           | OpenCode.Generated.EventQuestionV2Replied.t()
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
           | OpenCode.Generated.EventWorktreeReady.t()}
          | :error
  def event_subscribe(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Event, :event_subscribe},
      url: "/event",
      method: :get,
      query: query,
      response: [
        {200,
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
            {OpenCode.Generated.EventPermissionV2Asked, :t},
            {OpenCode.Generated.EventPermissionV2Replied, :t},
            {OpenCode.Generated.EventPluginAdded, :t},
            {OpenCode.Generated.EventProjectDirectoriesUpdated, :t},
            {OpenCode.Generated.EventProjectUpdated, :t},
            {OpenCode.Generated.EventPtyCreated, :t},
            {OpenCode.Generated.EventPtyDeleted, :t},
            {OpenCode.Generated.EventPtyExited, :t},
            {OpenCode.Generated.EventPtyUpdated, :t},
            {OpenCode.Generated.EventQuestionAsked, :t},
            {OpenCode.Generated.EventQuestionRejected, :t},
            {OpenCode.Generated.EventQuestionReplied, :t},
            {OpenCode.Generated.EventQuestionV2Asked, :t},
            {OpenCode.Generated.EventQuestionV2Rejected, :t},
            {OpenCode.Generated.EventQuestionV2Replied, :t},
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
            {OpenCode.Generated.EventWorktreeReady, :t}
          ]}}
      ],
      opts: opts
    })
  end
end
