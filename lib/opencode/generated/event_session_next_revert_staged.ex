defmodule OpenCode.Generated.EventSessionNextRevertStaged do
  @moduledoc """
  Provides struct and type for a EventSessionNextRevertStaged
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextRevertStagedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextRevertStagedProperties, :t},
      type: {:const, "session.next.revert.staged"}
    ]
  end
end
