defmodule OpenCode.Generated.EventSessionNextPrompted do
  @moduledoc """
  Provides struct and type for a EventSessionNextPrompted
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextPromptedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextPromptedProperties, :t},
      type: {:const, "session.next.prompted"}
    ]
  end
end
