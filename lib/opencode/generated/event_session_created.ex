defmodule OpenCode.Generated.EventSessionCreated do
  @moduledoc """
  Provides struct and type for a EventSessionCreated
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionCreatedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionCreatedProperties, :t},
      type: {:const, "session.created"}
    ]
  end
end
