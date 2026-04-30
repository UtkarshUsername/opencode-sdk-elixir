defmodule OpenCode.Generated.RangeEnd do
  @moduledoc """
  Provides struct and type for a RangeEnd
  """

  @type t :: %__MODULE__{character: integer, line: integer}

  defstruct [:character, :line]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [character: :integer, line: :integer]
  end
end
