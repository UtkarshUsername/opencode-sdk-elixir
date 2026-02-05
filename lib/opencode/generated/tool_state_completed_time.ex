defmodule OpenCode.Generated.ToolStateCompletedTime do
  @moduledoc """
  Provides struct and type for a ToolStateCompletedTime
  """

  @type t :: %__MODULE__{compacted: number | nil, end: number, start: number}

  defstruct [:compacted, :end, :start]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [compacted: :number, end: :number, start: :number]
  end
end
