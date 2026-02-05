defmodule OpenCode.Generated.EventSessionCreated do
  @moduledoc """
  Provides struct and type for a EventSessionCreated
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventSessionCreatedProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventSessionCreatedProperties, :t},
      type: {:const, "session.created"}
    ]
  end
end
