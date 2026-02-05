defmodule OpenCode.Generated.AgentPartInputSource do
  @moduledoc """
  Provides struct and type for a AgentPartInputSource
  """

  @type t :: %__MODULE__{end: integer, start: integer, value: String.t()}

  defstruct [:end, :start, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [end: :integer, start: :integer, value: :string]
  end
end
