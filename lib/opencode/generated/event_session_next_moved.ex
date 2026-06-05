defmodule OpenCode.Generated.EventSessionNextMoved do
  @moduledoc """
  Provides struct and type for a EventSessionNextMoved
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextMovedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextMovedProperties, :t},
      type: {:const, "session.next.moved"}
    ]
  end
end
