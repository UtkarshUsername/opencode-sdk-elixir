defmodule OpenCode.Generated.EventPtyCreated do
  @moduledoc """
  Provides struct and type for a EventPtyCreated
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventPtyCreatedProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventPtyCreatedProperties, :t},
      type: {:const, "pty.created"}
    ]
  end
end
