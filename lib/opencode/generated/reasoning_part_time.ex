defmodule OpenCode.Generated.ReasoningPartTime do
  @moduledoc """
  Provides struct and type for a ReasoningPartTime
  """

  @type t :: %__MODULE__{end: number | nil, start: number}

  defstruct [:end, :start]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [end: :number, start: :number]
  end
end
