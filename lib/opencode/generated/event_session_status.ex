defmodule OpenCode.Generated.EventSessionStatus do
  @moduledoc """
  Provides struct and type for a EventSessionStatus
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventSessionStatusProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventSessionStatusProperties, :t},
      type: {:const, "session.status"}
    ]
  end
end
