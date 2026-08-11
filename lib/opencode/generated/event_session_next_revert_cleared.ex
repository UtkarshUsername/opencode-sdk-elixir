defmodule OpenCode.Generated.EventSessionNextRevertCleared do
  @moduledoc """
  Provides struct and type for a EventSessionNextRevertCleared
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextRevertClearedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextRevertClearedProperties, :t},
      type: {:const, "session.next.revert.cleared"}
    ]
  end
end
