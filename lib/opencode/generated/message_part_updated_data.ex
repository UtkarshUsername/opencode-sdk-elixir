defmodule OpenCode.Generated.MessagePartUpdatedData do
  @moduledoc """
  Provides struct and type for a MessagePartUpdatedData
  """

  @type t :: %__MODULE__{
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
          session_id: String.t(),
          time: number
        }

  defstruct [:part, :session_id, :time]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
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
      session_id: :string,
      time: :number
    ]
  end
end
