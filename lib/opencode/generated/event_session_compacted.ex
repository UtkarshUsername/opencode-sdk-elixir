defmodule OpenCode.Generated.EventSessionCompacted do
  @moduledoc """
  Provides struct and type for a EventSessionCompacted
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventSessionCompactedProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventSessionCompactedProperties, :t},
      type: {:const, "session.compacted"}
    ]
  end
end
