defmodule OpenCode.Generated.EventSessionDeleted do
  @moduledoc """
  Provides struct and type for a EventSessionDeleted
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventSessionDeletedProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventSessionDeletedProperties, :t},
      type: {:const, "session.deleted"}
    ]
  end
end
