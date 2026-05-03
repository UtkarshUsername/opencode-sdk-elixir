defmodule OpenCode.Generated.EventSessionNextCompactionStarted do
  @moduledoc """
  Provides struct and type for a EventSessionNextCompactionStarted
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextCompactionStartedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextCompactionStartedProperties, :t},
      type: {:const, "session.next.compaction.started"}
    ]
  end
end
