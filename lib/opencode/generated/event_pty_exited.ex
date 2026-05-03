defmodule OpenCode.Generated.EventPtyExited do
  @moduledoc """
  Provides struct and type for a EventPtyExited
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventPtyExitedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventPtyExitedProperties, :t},
      type: {:const, "pty.exited"}
    ]
  end
end
