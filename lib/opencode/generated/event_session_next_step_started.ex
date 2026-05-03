defmodule OpenCode.Generated.EventSessionNextStepStarted do
  @moduledoc """
  Provides struct and type for a EventSessionNextStepStarted
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextStepStartedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextStepStartedProperties, :t},
      type: {:const, "session.next.step.started"}
    ]
  end
end
