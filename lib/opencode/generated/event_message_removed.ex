defmodule OpenCode.Generated.EventMessageRemoved do
  @moduledoc """
  Provides struct and type for a EventMessageRemoved
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventMessageRemovedProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventMessageRemovedProperties, :t},
      type: {:const, "message.removed"}
    ]
  end
end
