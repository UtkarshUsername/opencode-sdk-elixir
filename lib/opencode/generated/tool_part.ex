defmodule OpenCode.Generated.ToolPart do
  @moduledoc """
  Provides struct and type for a ToolPart
  """

  @type t :: %__MODULE__{
          call_id: String.t(),
          id: String.t(),
          message_id: String.t(),
          metadata: map | nil,
          session_id: String.t(),
          state:
            OpenCode.Generated.ToolStateCompleted.t()
            | OpenCode.Generated.ToolStateError.t()
            | OpenCode.Generated.ToolStatePending.t()
            | OpenCode.Generated.ToolStateRunning.t(),
          tool: String.t(),
          type: String.t()
        }

  defstruct [:call_id, :id, :message_id, :metadata, :session_id, :state, :tool, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      call_id: :string,
      id: :string,
      message_id: :string,
      metadata: :map,
      session_id: :string,
      state:
        {:union,
         [
           {OpenCode.Generated.ToolStateCompleted, :t},
           {OpenCode.Generated.ToolStateError, :t},
           {OpenCode.Generated.ToolStatePending, :t},
           {OpenCode.Generated.ToolStateRunning, :t}
         ]},
      tool: :string,
      type: {:const, "tool"}
    ]
  end
end
