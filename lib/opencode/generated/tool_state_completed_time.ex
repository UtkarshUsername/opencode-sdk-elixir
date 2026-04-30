defmodule OpenCode.Generated.ToolStateCompletedTime do
  @moduledoc """
  Provides struct and type for a ToolStateCompletedTime
  """

  @type t :: %__MODULE__{compacted: integer | nil, end: integer, start: integer}

  defstruct [:compacted, :end, :start]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [compacted: :integer, end: :integer, start: :integer]
  end
end
