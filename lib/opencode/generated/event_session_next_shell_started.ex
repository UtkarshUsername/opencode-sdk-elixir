defmodule OpenCode.Generated.EventSessionNextShellStarted do
  @moduledoc """
  Provides struct and type for a EventSessionNextShellStarted
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextShellStartedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextShellStartedProperties, :t},
      type: {:const, "session.next.shell.started"}
    ]
  end
end
