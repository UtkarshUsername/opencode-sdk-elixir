defmodule OpenCode.Generated.EventPtyUpdated do
  @moduledoc """
  Provides struct and type for a EventPtyUpdated
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventPtyUpdatedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventPtyUpdatedProperties, :t},
      type: {:const, "pty.updated"}
    ]
  end
end
