defmodule OpenCode.Generated.EventSessionNextContextUpdated do
  @moduledoc """
  Provides struct and type for a EventSessionNextContextUpdated
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextContextUpdatedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextContextUpdatedProperties, :t},
      type: {:const, "session.next.context.updated"}
    ]
  end
end
