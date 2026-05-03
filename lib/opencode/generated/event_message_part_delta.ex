defmodule OpenCode.Generated.EventMessagePartDelta do
  @moduledoc """
  Provides struct and type for a EventMessagePartDelta
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventMessagePartDeltaProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventMessagePartDeltaProperties, :t},
      type: {:const, "message.part.delta"}
    ]
  end
end
