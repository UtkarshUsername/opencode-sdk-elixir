defmodule OpenCode.Generated.TextPartTime do
  @moduledoc """
  Provides struct and type for a TextPartTime
  """

  @type t :: %__MODULE__{end: integer | nil, start: integer}

  defstruct [:end, :start]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [end: :integer, start: :integer]
  end
end
