defmodule OpenCode.Generated.GlobalSessionTime do
  @moduledoc """
  Provides struct and type for a GlobalSessionTime
  """

  @type t :: %__MODULE__{
          archived: number | nil,
          compacting: number | nil,
          created: number,
          updated: number
        }

  defstruct [:archived, :compacting, :created, :updated]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [archived: :number, compacting: :number, created: :number, updated: :number]
  end
end
