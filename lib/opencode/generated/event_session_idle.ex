defmodule OpenCode.Generated.EventSessionIdle do
  @moduledoc """
  Provides struct and type for a EventSessionIdle
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventSessionIdleProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventSessionIdleProperties, :t},
      type: {:const, "session.idle"}
    ]
  end
end
