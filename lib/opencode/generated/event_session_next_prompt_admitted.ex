defmodule OpenCode.Generated.EventSessionNextPromptAdmitted do
  @moduledoc """
  Provides struct and type for a EventSessionNextPromptAdmitted
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextPromptAdmittedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextPromptAdmittedProperties, :t},
      type: {:const, "session.next.prompt.admitted"}
    ]
  end
end
