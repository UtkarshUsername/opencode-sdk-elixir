defmodule OpenCode.Generated.EventSessionNextPromptPromoted do
  @moduledoc """
  Provides struct and type for a EventSessionNextPromptPromoted
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextPromptPromotedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextPromptPromotedProperties, :t},
      type: {:const, "session.next.prompt.promoted"}
    ]
  end
end
