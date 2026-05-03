defmodule OpenCode.Generated.EventPtyDeleted do
  @moduledoc """
  Provides struct and type for a EventPtyDeleted
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventPtyDeletedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventPtyDeletedProperties, :t},
      type: {:const, "pty.deleted"}
    ]
  end
end
