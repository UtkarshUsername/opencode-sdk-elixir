defmodule OpenCode.Generated.ToolStateRunningTime do
  @moduledoc """
  Provides struct and type for a ToolStateRunningTime
  """

  @type t :: %__MODULE__{start: integer}

  defstruct [:start]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [start: :integer]
  end
end
