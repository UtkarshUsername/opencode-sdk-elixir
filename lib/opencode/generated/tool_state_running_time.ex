defmodule OpenCode.Generated.ToolStateRunningTime do
  @moduledoc """
  Provides struct and type for a ToolStateRunningTime
  """

  @type t :: %__MODULE__{start: number}

  defstruct [:start]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [start: :number]
  end
end
