defmodule OpenCode.Generated.SessionTime do
  @moduledoc """
  Provides struct and type for a SessionTime
  """

  @type t :: %__MODULE__{
          archived: integer | nil,
          compacting: integer | nil,
          created: integer,
          updated: integer
        }

  defstruct [:archived, :compacting, :created, :updated]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [archived: :integer, compacting: :integer, created: :integer, updated: :integer]
  end
end
