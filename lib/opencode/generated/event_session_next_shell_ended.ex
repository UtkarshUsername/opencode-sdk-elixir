defmodule OpenCode.Generated.EventSessionNextShellEnded do
  @moduledoc """
  Provides struct and type for a EventSessionNextShellEnded
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextShellEndedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextShellEndedProperties, :t},
      type: {:const, "session.next.shell.ended"}
    ]
  end
end
