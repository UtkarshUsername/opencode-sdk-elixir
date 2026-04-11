defmodule OpenCode.Generated.GlobalEvent do
  @moduledoc """
  Provides struct and type for a GlobalEvent
  """

  @type t :: %__MODULE__{
          directory: String.t(),
          payload:
            OpenCode.Generated.EventCommandExecuted.t()
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
            | OpenCode.Generated.EventPermissionAsked.t()
            | OpenCode.Generated.EventPermissionReplied.t()
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
            | OpenCode.Generated.EventWorktreeReady.t(),
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
           {OpenCode.Generated.EventPermissionAsked, :t},
           {OpenCode.Generated.EventPermissionReplied, :t},
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
         ]},
      project: :string,
      workspace: :string
    ]
  end
end
