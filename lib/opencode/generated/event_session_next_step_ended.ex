defmodule OpenCode.Generated.EventSessionNextStepEnded do
  @moduledoc """
  Provides struct and type for a EventSessionNextStepEnded
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextStepEndedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextStepEndedProperties, :t},
      type: {:const, "session.next.step.ended"}
    ]
  end
end
