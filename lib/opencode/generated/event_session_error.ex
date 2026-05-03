defmodule OpenCode.Generated.EventSessionError do
  @moduledoc """
  Provides struct and type for a EventSessionError
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionErrorProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionErrorProperties, :t},
      type: {:const, "session.error"}
    ]
  end
end
