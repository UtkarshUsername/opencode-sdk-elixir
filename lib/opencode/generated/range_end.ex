defmodule OpenCode.Generated.RangeEnd do
  @moduledoc """
  Provides struct and type for a RangeEnd
  """

  @type t :: %__MODULE__{character: number, line: number}

  defstruct [:character, :line]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [character: :number, line: :number]
  end
end
