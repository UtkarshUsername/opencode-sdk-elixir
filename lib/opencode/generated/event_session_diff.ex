defmodule OpenCode.Generated.EventSessionDiff do
  @moduledoc """
  Provides struct and type for a EventSessionDiff
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventSessionDiffProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventSessionDiffProperties, :t},
      type: {:const, "session.diff"}
    ]
  end
end
