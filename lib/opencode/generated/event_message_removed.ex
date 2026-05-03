defmodule OpenCode.Generated.EventMessageRemoved do
  @moduledoc """
  Provides struct and type for a EventMessageRemoved
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventMessageRemovedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventMessageRemovedProperties, :t},
      type: {:const, "message.removed"}
    ]
  end
end
