defmodule OpenCode.Generated.EventSessionNextInterruptRequested do
  @moduledoc """
  Provides struct and type for a EventSessionNextInterruptRequested
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextInterruptRequestedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextInterruptRequestedProperties, :t},
      type: {:const, "session.next.interrupt.requested"}
    ]
  end
end
