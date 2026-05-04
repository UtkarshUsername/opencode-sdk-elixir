defmodule OpenCode.Generated.EventSessionNextStepFailed do
  @moduledoc """
  Provides struct and type for a EventSessionNextStepFailed
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextStepFailedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextStepFailedProperties, :t},
      type: {:const, "session.next.step.failed"}
    ]
  end
end
