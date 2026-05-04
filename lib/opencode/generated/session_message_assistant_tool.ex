defmodule OpenCode.Generated.SessionMessageAssistantTool do
  @moduledoc """
  Provides struct and type for a SessionMessageAssistantTool
  """

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          provider: OpenCode.Generated.SessionMessageAssistantToolProvider.t() | nil,
          state:
            OpenCode.Generated.SessionMessageToolStateCompleted.t()
            | OpenCode.Generated.SessionMessageToolStateError.t()
            | OpenCode.Generated.SessionMessageToolStatePending.t()
            | OpenCode.Generated.SessionMessageToolStateRunning.t(),
          time: OpenCode.Generated.SessionMessageAssistantToolTime.t(),
          type: String.t()
        }

  defstruct [:id, :name, :provider, :state, :time, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      name: :string,
      provider: {OpenCode.Generated.SessionMessageAssistantToolProvider, :t},
      state:
        {:union,
         [
           {OpenCode.Generated.SessionMessageToolStateCompleted, :t},
           {OpenCode.Generated.SessionMessageToolStateError, :t},
           {OpenCode.Generated.SessionMessageToolStatePending, :t},
           {OpenCode.Generated.SessionMessageToolStateRunning, :t}
         ]},
      time: {OpenCode.Generated.SessionMessageAssistantToolTime, :t},
      type: {:const, "tool"}
    ]
  end
end
