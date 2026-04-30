defmodule OpenCode.Generated.ToolStateErrorTime do
  @moduledoc """
  Provides struct and type for a ToolStateErrorTime
  """

  @type t :: %__MODULE__{end: integer, start: integer}

  defstruct [:end, :start]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [end: :integer, start: :integer]
  end
end
