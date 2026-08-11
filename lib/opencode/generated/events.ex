defmodule OpenCode.Generated.Events do
  @moduledoc """
  Provides API endpoint related to events
  """

  @default_client OpenCode.Client

  @doc """
  Subscribe to events

  Subscribe to native event payloads for the server.
  """
  @spec v2_event_subscribe(opts :: keyword) ::
          {:ok,
           OpenCode.Generated.CatalogUpdated.t()
           | OpenCode.Generated.CommandExecuted.t()
           | OpenCode.Generated.FileEdited.t()
           | OpenCode.Generated.FileWatcherUpdated.t()
           | OpenCode.Generated.GlobalDisposed.t()
           | OpenCode.Generated.InstallationUpdateAvailable.t()
           | OpenCode.Generated.InstallationUpdated.t()
           | OpenCode.Generated.IntegrationConnectionUpdated.t()
           | OpenCode.Generated.IntegrationUpdated.t()
           | OpenCode.Generated.LspUpdated.t()
           | OpenCode.Generated.McpBrowserOpenFailed.t()
           | OpenCode.Generated.McpToolsChanged.t()
           | OpenCode.Generated.MessagePartDelta.t()
           | OpenCode.Generated.MessagePartRemoved.t()
           | OpenCode.Generated.MessagePartUpdated.t()
           | OpenCode.Generated.MessageRemoved.t()
           | OpenCode.Generated.MessageUpdated.t()
           | OpenCode.Generated.ModelsDevRefreshed.t()
           | OpenCode.Generated.PermissionAsked.t()
           | OpenCode.Generated.PermissionReplied.t()
           | OpenCode.Generated.PermissionV2Asked.t()
           | OpenCode.Generated.PermissionV2Replied.t()
           | OpenCode.Generated.PluginAdded.t()
           | OpenCode.Generated.ProjectDirectoriesUpdated.t()
           | OpenCode.Generated.ProjectUpdated.t()
           | OpenCode.Generated.PtyCreated.t()
           | OpenCode.Generated.PtyDeleted.t()
           | OpenCode.Generated.PtyExited.t()
           | OpenCode.Generated.PtyUpdated.t()
           | OpenCode.Generated.QuestionAsked.t()
           | OpenCode.Generated.QuestionRejected.t()
           | OpenCode.Generated.QuestionReplied.t()
           | OpenCode.Generated.QuestionV2Asked.t()
           | OpenCode.Generated.QuestionV2Rejected.t()
           | OpenCode.Generated.QuestionV2Replied.t()
           | OpenCode.Generated.ReferenceUpdated.t()
           | OpenCode.Generated.ServerConnected.t()
           | OpenCode.Generated.SessionCompacted.t()
           | OpenCode.Generated.SessionCreated.t()
           | OpenCode.Generated.SessionDeleted.t()
           | OpenCode.Generated.SessionDiff.t()
           | OpenCode.Generated.SessionError.t()
           | OpenCode.Generated.SessionIdle.t()
           | OpenCode.Generated.SessionNextAgentSwitched.t()
           | OpenCode.Generated.SessionNextCompactionDelta.t()
           | OpenCode.Generated.SessionNextCompactionEnded.t()
           | OpenCode.Generated.SessionNextCompactionStarted.t()
           | OpenCode.Generated.SessionNextContextUpdated.t()
           | OpenCode.Generated.SessionNextModelSwitched.t()
           | OpenCode.Generated.SessionNextMoved.t()
           | OpenCode.Generated.SessionNextPromptAdmitted.t()
           | OpenCode.Generated.SessionNextPrompted.t()
           | OpenCode.Generated.SessionNextReasoningDelta.t()
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
           | OpenCode.Generated.SessionNextTextDelta.t()
           | OpenCode.Generated.SessionNextTextEnded.t()
           | OpenCode.Generated.SessionNextTextStarted.t()
           | OpenCode.Generated.SessionNextToolCalled.t()
           | OpenCode.Generated.SessionNextToolFailed.t()
           | OpenCode.Generated.SessionNextToolInputDelta.t()
           | OpenCode.Generated.SessionNextToolInputEnded.t()
           | OpenCode.Generated.SessionNextToolInputStarted.t()
           | OpenCode.Generated.SessionNextToolProgress.t()
           | OpenCode.Generated.SessionNextToolSuccess.t()
           | OpenCode.Generated.SessionStatus.t()
           | OpenCode.Generated.SessionUpdated.t()
           | OpenCode.Generated.TodoUpdated.t()
           | OpenCode.Generated.TuiCommandExecute.t()
           | OpenCode.Generated.TuiPromptAppend.t()
           | OpenCode.Generated.TuiSessionSelect.t()
           | OpenCode.Generated.TuiToastShow.t()
           | OpenCode.Generated.VcsBranchUpdated.t()
           | OpenCode.Generated.WorkspaceFailed.t()
           | OpenCode.Generated.WorkspaceReady.t()
           | OpenCode.Generated.WorkspaceStatus.t()
           | OpenCode.Generated.WorktreeFailed.t()
           | OpenCode.Generated.WorktreeReady.t()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_event_subscribe(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Events, :v2_event_subscribe},
      url: "/api/event",
      method: :get,
      response: [
        {200,
         {:union,
          [
            {OpenCode.Generated.CatalogUpdated, :t},
            {OpenCode.Generated.CommandExecuted, :t},
            {OpenCode.Generated.FileEdited, :t},
            {OpenCode.Generated.FileWatcherUpdated, :t},
            {OpenCode.Generated.GlobalDisposed, :t},
            {OpenCode.Generated.InstallationUpdateAvailable, :t},
            {OpenCode.Generated.InstallationUpdated, :t},
            {OpenCode.Generated.IntegrationConnectionUpdated, :t},
            {OpenCode.Generated.IntegrationUpdated, :t},
            {OpenCode.Generated.LspUpdated, :t},
            {OpenCode.Generated.McpBrowserOpenFailed, :t},
            {OpenCode.Generated.McpToolsChanged, :t},
            {OpenCode.Generated.MessagePartDelta, :t},
            {OpenCode.Generated.MessagePartRemoved, :t},
            {OpenCode.Generated.MessagePartUpdated, :t},
            {OpenCode.Generated.MessageRemoved, :t},
            {OpenCode.Generated.MessageUpdated, :t},
            {OpenCode.Generated.ModelsDevRefreshed, :t},
            {OpenCode.Generated.PermissionAsked, :t},
            {OpenCode.Generated.PermissionReplied, :t},
            {OpenCode.Generated.PermissionV2Asked, :t},
            {OpenCode.Generated.PermissionV2Replied, :t},
            {OpenCode.Generated.PluginAdded, :t},
            {OpenCode.Generated.ProjectDirectoriesUpdated, :t},
            {OpenCode.Generated.ProjectUpdated, :t},
            {OpenCode.Generated.PtyCreated, :t},
            {OpenCode.Generated.PtyDeleted, :t},
            {OpenCode.Generated.PtyExited, :t},
            {OpenCode.Generated.PtyUpdated, :t},
            {OpenCode.Generated.QuestionAsked, :t},
            {OpenCode.Generated.QuestionRejected, :t},
            {OpenCode.Generated.QuestionReplied, :t},
            {OpenCode.Generated.QuestionV2Asked, :t},
            {OpenCode.Generated.QuestionV2Rejected, :t},
            {OpenCode.Generated.QuestionV2Replied, :t},
            {OpenCode.Generated.ReferenceUpdated, :t},
            {OpenCode.Generated.ServerConnected, :t},
            {OpenCode.Generated.SessionCompacted, :t},
            {OpenCode.Generated.SessionCreated, :t},
            {OpenCode.Generated.SessionDeleted, :t},
            {OpenCode.Generated.SessionDiff, :t},
            {OpenCode.Generated.SessionError, :t},
            {OpenCode.Generated.SessionIdle, :t},
            {OpenCode.Generated.SessionNextAgentSwitched, :t},
            {OpenCode.Generated.SessionNextCompactionDelta, :t},
            {OpenCode.Generated.SessionNextCompactionEnded, :t},
            {OpenCode.Generated.SessionNextCompactionStarted, :t},
            {OpenCode.Generated.SessionNextContextUpdated, :t},
            {OpenCode.Generated.SessionNextModelSwitched, :t},
            {OpenCode.Generated.SessionNextMoved, :t},
            {OpenCode.Generated.SessionNextPromptAdmitted, :t},
            {OpenCode.Generated.SessionNextPrompted, :t},
            {OpenCode.Generated.SessionNextReasoningDelta, :t},
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
            {OpenCode.Generated.SessionNextTextDelta, :t},
            {OpenCode.Generated.SessionNextTextEnded, :t},
            {OpenCode.Generated.SessionNextTextStarted, :t},
            {OpenCode.Generated.SessionNextToolCalled, :t},
            {OpenCode.Generated.SessionNextToolFailed, :t},
            {OpenCode.Generated.SessionNextToolInputDelta, :t},
            {OpenCode.Generated.SessionNextToolInputEnded, :t},
            {OpenCode.Generated.SessionNextToolInputStarted, :t},
            {OpenCode.Generated.SessionNextToolProgress, :t},
            {OpenCode.Generated.SessionNextToolSuccess, :t},
            {OpenCode.Generated.SessionStatus, :t},
            {OpenCode.Generated.SessionUpdated, :t},
            {OpenCode.Generated.TodoUpdated, :t},
            {OpenCode.Generated.TuiCommandExecute, :t},
            {OpenCode.Generated.TuiPromptAppend, :t},
            {OpenCode.Generated.TuiSessionSelect, :t},
            {OpenCode.Generated.TuiToastShow, :t},
            {OpenCode.Generated.VcsBranchUpdated, :t},
            {OpenCode.Generated.WorkspaceFailed, :t},
            {OpenCode.Generated.WorkspaceReady, :t},
            {OpenCode.Generated.WorkspaceStatus, :t},
            {OpenCode.Generated.WorktreeFailed, :t},
            {OpenCode.Generated.WorktreeReady, :t}
          ]}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end
end
