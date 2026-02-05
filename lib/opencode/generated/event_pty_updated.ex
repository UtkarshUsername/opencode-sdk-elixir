defmodule OpenCode.Generated.EventPtyUpdated do
  @moduledoc """
  Provides struct and type for a EventPtyUpdated
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventPtyUpdatedProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventPtyUpdatedProperties, :t},
      type: {:const, "pty.updated"}
    ]
  end
end
