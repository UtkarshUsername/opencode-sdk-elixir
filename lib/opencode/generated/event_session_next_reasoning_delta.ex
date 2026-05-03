defmodule OpenCode.Generated.EventSessionNextReasoningDelta do
  @moduledoc """
  Provides struct and type for a EventSessionNextReasoningDelta
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextReasoningDeltaProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextReasoningDeltaProperties, :t},
      type: {:const, "session.next.reasoning.delta"}
    ]
  end
end
