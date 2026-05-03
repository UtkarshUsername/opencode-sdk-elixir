defmodule OpenCode.Generated.EventSessionUpdated do
  @moduledoc """
  Provides struct and type for a EventSessionUpdated
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionUpdatedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionUpdatedProperties, :t},
      type: {:const, "session.updated"}
    ]
  end
end
