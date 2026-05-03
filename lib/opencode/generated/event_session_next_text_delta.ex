defmodule OpenCode.Generated.EventSessionNextTextDelta do
  @moduledoc """
  Provides struct and type for a EventSessionNextTextDelta
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextTextDeltaProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextTextDeltaProperties, :t},
      type: {:const, "session.next.text.delta"}
    ]
  end
end
