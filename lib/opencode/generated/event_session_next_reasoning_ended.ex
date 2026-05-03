defmodule OpenCode.Generated.EventSessionNextReasoningEnded do
  @moduledoc """
  Provides struct and type for a EventSessionNextReasoningEnded
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextReasoningEndedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextReasoningEndedProperties, :t},
      type: {:const, "session.next.reasoning.ended"}
    ]
  end
end
