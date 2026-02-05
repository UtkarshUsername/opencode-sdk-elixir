defmodule OpenCode.Generated.ToolStateErrorTime do
  @moduledoc """
  Provides struct and type for a ToolStateErrorTime
  """

  @type t :: %__MODULE__{end: number, start: number}

  defstruct [:end, :start]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [end: :number, start: :number]
  end
end
