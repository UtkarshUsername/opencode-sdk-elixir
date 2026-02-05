defmodule OpenCode.Generated.Range do
  @moduledoc """
  Provides struct and type for a Range
  """

  @type t :: %__MODULE__{
          end: OpenCode.Generated.RangeEnd.t(),
          start: OpenCode.Generated.RangeStart.t()
        }

  defstruct [:end, :start]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [end: {OpenCode.Generated.RangeEnd, :t}, start: {OpenCode.Generated.RangeStart, :t}]
  end
end
