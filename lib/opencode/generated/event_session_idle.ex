defmodule OpenCode.Generated.EventSessionIdle do
  @moduledoc """
  Provides struct and type for a EventSessionIdle
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionIdleProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionIdleProperties, :t},
      type: {:const, "session.idle"}
    ]
  end
end
