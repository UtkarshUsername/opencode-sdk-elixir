defmodule OpenCode.Generated.EventSessionNextRevertCommitted do
  @moduledoc """
  Provides struct and type for a EventSessionNextRevertCommitted
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextRevertCommittedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextRevertCommittedProperties, :t},
      type: {:const, "session.next.revert.committed"}
    ]
  end
end
