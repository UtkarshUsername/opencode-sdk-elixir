defmodule OpenCode.Generated.GlobalEventPayloadProperties do
  @moduledoc """
  Provides struct and types for a GlobalEventPayloadProperties
  """

  @type t :: %__MODULE__{
          action: String.t(),
          agent: String.t(),
          always: [String.t()],
          answers: [[String.t()]],
          arguments: String.t(),
          assistant_message_id: String.t(),
          attempt: number,
          branch: String.t() | nil,
          call_id: String.t(),
          command: String.t(),
          commands: OpenCode.Generated.GlobalEventPayloadPropertiesCommands.t() | nil,
          content: [
            OpenCode.Generated.ToolFileContent.t() | OpenCode.Generated.ToolTextContent.t()
          ],
          cost: number,
          delivery: String.t(),
          delta: String.t(),
          diff: [OpenCode.Generated.SnapshotFileDiff.t()],
          duration: integer | nil,
          error:
            OpenCode.Generated.APIError.t()
            | OpenCode.Generated.ContentFilterError.t()
            | OpenCode.Generated.ContextOverflowError.t()
            | OpenCode.Generated.MessageAbortedError.t()
            | OpenCode.Generated.MessageOutputLengthError.t()
            | OpenCode.Generated.ProviderAuthError.t()
            | OpenCode.Generated.SessionErrorUnknown.t()
            | OpenCode.Generated.SessionNextRetryError.t()
            | OpenCode.Generated.StructuredOutputError.t()
            | OpenCode.Generated.UnknownError.t()
            | nil,
          event: String.t(),
          exit_code: integer,
          field: String.t(),
          file: String.t(),
          finish: String.t(),
          icon: OpenCode.Generated.GlobalEventPayloadPropertiesIcon.t() | nil,
          id: String.t(),
          info:
            OpenCode.Generated.AssistantMessage.t()
            | OpenCode.Generated.Pty.t()
            | OpenCode.Generated.Session.t()
            | OpenCode.Generated.UserMessage.t(),
          input: map,
          location: OpenCode.Generated.LocationRef.t(),
          mcp_name: String.t(),
          message: String.t(),
          message_id: String.t(),
          metadata: map | nil,
          model: OpenCode.Generated.GlobalEventPayloadPropertiesModel.t(),
          name: String.t() | nil,
          output: String.t(),
          output_paths: [String.t()] | nil,
          part:
            OpenCode.Generated.AgentPart.t()
            | OpenCode.Generated.CompactionPart.t()
            | OpenCode.Generated.FilePart.t()
            | OpenCode.Generated.PatchPart.t()
            | OpenCode.Generated.ReasoningPart.t()
            | OpenCode.Generated.RetryPart.t()
            | OpenCode.Generated.SnapshotPart.t()
            | OpenCode.Generated.StepFinishPart.t()
            | OpenCode.Generated.StepStartPart.t()
            | OpenCode.Generated.SubtaskPart.t()
            | OpenCode.Generated.TextPart.t()
            | OpenCode.Generated.ToolPart.t(),
          part_id: String.t(),
          patterns: [String.t()],
          permission: String.t(),
          project_id: String.t(),
          prompt: OpenCode.Generated.Prompt.t(),
          provider: OpenCode.Generated.GlobalEventPayloadPropertiesProvider.t(),
          provider_metadata: map | nil,
          questions:
            [OpenCode.Generated.QuestionInfo.t()] | [OpenCode.Generated.QuestionV2Info.t()],
          reason: String.t(),
          reasoning_id: String.t(),
          recent: String.t(),
          reply: String.t(),
          request_id: String.t(),
          resources: [String.t()],
          result: map | nil,
          sandboxes: [String.t()],
          save: [String.t()] | nil,
          server: String.t(),
          session_id: String.t() | nil,
          snapshot: String.t() | nil,
          source: OpenCode.Generated.PermissionV2Source.t() | nil,
          status: map | String.t(),
          structured: map,
          subdirectory: String.t() | nil,
          text: String.t(),
          text_id: String.t(),
          time: number | OpenCode.Generated.GlobalEventPayloadPropertiesTime.t(),
          time_created: number,
          timestamp: number,
          title: String.t() | nil,
          todos: [OpenCode.Generated.Todo.t()],
          tokens: OpenCode.Generated.GlobalEventPayloadPropertiesTokens.t(),
          tool:
            OpenCode.Generated.GlobalEventPayloadPropertiesTool.t()
            | OpenCode.Generated.QuestionTool.t()
            | OpenCode.Generated.QuestionV2Tool.t()
            | String.t()
            | nil,
          url: String.t(),
          variant: String.t(),
          vcs: String.t() | nil,
          version: String.t(),
          workspace_id: String.t(),
          worktree: String.t()
        }

  defstruct [
    :action,
    :agent,
    :always,
    :answers,
    :arguments,
    :assistant_message_id,
    :attempt,
    :branch,
    :call_id,
    :command,
    :commands,
    :content,
    :cost,
    :delivery,
    :delta,
    :diff,
    :duration,
    :error,
    :event,
    :exit_code,
    :field,
    :file,
    :finish,
    :icon,
    :id,
    :info,
    :input,
    :location,
    :mcp_name,
    :message,
    :message_id,
    :metadata,
    :model,
    :name,
    :output,
    :output_paths,
    :part,
    :part_id,
    :patterns,
    :permission,
    :project_id,
    :prompt,
    :provider,
    :provider_metadata,
    :questions,
    :reason,
    :reasoning_id,
    :recent,
    :reply,
    :request_id,
    :resources,
    :result,
    :sandboxes,
    :save,
    :server,
    :session_id,
    :snapshot,
    :source,
    :status,
    :structured,
    :subdirectory,
    :text,
    :text_id,
    :time,
    :time_created,
    :timestamp,
    :title,
    :todos,
    :tokens,
    :tool,
    :url,
    :variant,
    :vcs,
    :version,
    :workspace_id,
    :worktree
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      action: :string,
      agent: :string,
      always: [:string],
      answers: [[:string]],
      arguments: :string,
      assistant_message_id: :string,
      attempt: :number,
      branch: :string,
      call_id: :string,
      command:
        {:union,
         [
           :string,
           enum: [
             "session.list",
             "session.new",
             "session.share",
             "session.interrupt",
             "session.compact",
             "session.page.up",
             "session.page.down",
             "session.line.up",
             "session.line.down",
             "session.half.page.up",
             "session.half.page.down",
             "session.first",
             "session.last",
             "prompt.clear",
             "prompt.submit",
             "agent.cycle"
           ]
         ]},
      commands: {OpenCode.Generated.GlobalEventPayloadPropertiesCommands, :t},
      content: [
        union: [
          {OpenCode.Generated.ToolFileContent, :t},
          {OpenCode.Generated.ToolTextContent, :t}
        ]
      ],
      cost: :number,
      delivery: {:enum, ["steer", "queue"]},
      delta: :string,
      diff: [{OpenCode.Generated.SnapshotFileDiff, :t}],
      duration: :integer,
      error:
        {:union,
         [
           {OpenCode.Generated.APIError, :t},
           {OpenCode.Generated.ContentFilterError, :t},
           {OpenCode.Generated.ContextOverflowError, :t},
           {OpenCode.Generated.MessageAbortedError, :t},
           {OpenCode.Generated.MessageOutputLengthError, :t},
           {OpenCode.Generated.ProviderAuthError, :t},
           {OpenCode.Generated.SessionErrorUnknown, :t},
           {OpenCode.Generated.SessionNextRetryError, :t},
           {OpenCode.Generated.StructuredOutputError, :t},
           {OpenCode.Generated.UnknownError, :t}
         ]},
      event: {:enum, ["add", "change", "unlink"]},
      exit_code: :integer,
      field: :string,
      file: :string,
      finish: :string,
      icon: {OpenCode.Generated.GlobalEventPayloadPropertiesIcon, :t},
      id: :string,
      info:
        {:union,
         [
           {OpenCode.Generated.AssistantMessage, :t},
           {OpenCode.Generated.Pty, :t},
           {OpenCode.Generated.Session, :t},
           {OpenCode.Generated.UserMessage, :t}
         ]},
      input: :map,
      location: {OpenCode.Generated.LocationRef, :t},
      mcp_name: :string,
      message: :string,
      message_id: :string,
      metadata: :map,
      model: {OpenCode.Generated.GlobalEventPayloadPropertiesModel, :t},
      name: :string,
      output: :string,
      output_paths: [:string],
      part:
        {:union,
         [
           {OpenCode.Generated.AgentPart, :t},
           {OpenCode.Generated.CompactionPart, :t},
           {OpenCode.Generated.FilePart, :t},
           {OpenCode.Generated.PatchPart, :t},
           {OpenCode.Generated.ReasoningPart, :t},
           {OpenCode.Generated.RetryPart, :t},
           {OpenCode.Generated.SnapshotPart, :t},
           {OpenCode.Generated.StepFinishPart, :t},
           {OpenCode.Generated.StepStartPart, :t},
           {OpenCode.Generated.SubtaskPart, :t},
           {OpenCode.Generated.TextPart, :t},
           {OpenCode.Generated.ToolPart, :t}
         ]},
      part_id: :string,
      patterns: [:string],
      permission: :string,
      project_id: :string,
      prompt: {OpenCode.Generated.Prompt, :t},
      provider: {OpenCode.Generated.GlobalEventPayloadPropertiesProvider, :t},
      provider_metadata: :map,
      questions:
        {:union,
         [[{OpenCode.Generated.QuestionInfo, :t}], [{OpenCode.Generated.QuestionV2Info, :t}]]},
      reason: {:enum, ["auto", "manual"]},
      reasoning_id: :string,
      recent: :string,
      reply: {:enum, ["once", "always", "reject"]},
      request_id: :string,
      resources: [:string],
      result: :map,
      sandboxes: [:string],
      save: [:string],
      server: :string,
      session_id: :string,
      snapshot: :string,
      source: {OpenCode.Generated.PermissionV2Source, :t},
      status: {:union, [:map, enum: ["connected", "connecting", "disconnected", "error"]]},
      structured: :map,
      subdirectory: :string,
      text: :string,
      text_id: :string,
      time: {:union, [:number, {OpenCode.Generated.GlobalEventPayloadPropertiesTime, :t}]},
      time_created: :number,
      timestamp: :number,
      title: :string,
      todos: [{OpenCode.Generated.Todo, :t}],
      tokens: {OpenCode.Generated.GlobalEventPayloadPropertiesTokens, :t},
      tool:
        {:union,
         [
           :string,
           {OpenCode.Generated.GlobalEventPayloadPropertiesTool, :t},
           {OpenCode.Generated.QuestionTool, :t},
           {OpenCode.Generated.QuestionV2Tool, :t}
         ]},
      url: :string,
      variant: {:enum, ["info", "success", "warning", "error"]},
      vcs: {:const, "git"},
      version: :string,
      workspace_id: :string,
      worktree: :string
    ]
  end
end
