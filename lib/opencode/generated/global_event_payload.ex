defmodule OpenCode.Generated.GlobalEventPayload do
  @moduledoc """
  Provides struct and types for a GlobalEventPayload
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: map | OpenCode.Generated.GlobalEventPayloadProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {:union, [:map, {OpenCode.Generated.GlobalEventPayloadProperties, :t}]},
      type:
        {:enum,
         [
           "catalog.model.updated",
           "command.executed",
           "connector.updated",
           "credential.added",
           "credential.removed",
           "credential.switched",
           "file.edited",
           "file.watcher.updated",
           "global.disposed",
           "installation.update-available",
           "installation.updated",
           "lsp.updated",
           "mcp.browser.open.failed",
           "mcp.tools.changed",
           "message.part.delta",
           "message.part.removed",
           "message.part.updated",
           "message.removed",
           "message.updated",
           "models-dev.refreshed",
           "permission.asked",
           "permission.replied",
           "permission.v2.asked",
           "permission.v2.replied",
           "plugin.added",
           "project.directories.updated",
           "project.updated",
           "pty.created",
           "pty.deleted",
           "pty.exited",
           "pty.updated",
           "question.asked",
           "question.rejected",
           "question.replied",
           "question.v2.asked",
           "question.v2.rejected",
           "question.v2.replied",
           "reference.updated",
           "server.connected",
           "session.compacted",
           "session.created",
           "session.deleted",
           "session.diff",
           "session.error",
           "session.idle",
           "session.next.agent.switched",
           "session.next.compaction.delta",
           "session.next.compaction.ended",
           "session.next.compaction.started",
           "session.next.context.updated",
           "session.next.interrupt.requested",
           "session.next.model.switched",
           "session.next.moved",
           "session.next.prompt.admitted",
           "session.next.prompt.promoted",
           "session.next.prompted",
           "session.next.reasoning.delta",
           "session.next.reasoning.ended",
           "session.next.reasoning.started",
           "session.next.retried",
           "session.next.shell.ended",
           "session.next.shell.started",
           "session.next.step.ended",
           "session.next.step.failed",
           "session.next.step.started",
           "session.next.synthetic",
           "session.next.text.delta",
           "session.next.text.ended",
           "session.next.text.started",
           "session.next.tool.called",
           "session.next.tool.failed",
           "session.next.tool.input.delta",
           "session.next.tool.input.ended",
           "session.next.tool.input.started",
           "session.next.tool.progress",
           "session.next.tool.success",
           "session.status",
           "session.updated",
           "todo.updated",
           "tui.command.execute",
           "tui.prompt.append",
           "tui.session.select",
           "tui.toast.show",
           "vcs.branch.updated",
           "workspace.failed",
           "workspace.ready",
           "workspace.status",
           "worktree.failed",
           "worktree.ready"
         ]}
    ]
  end
end
