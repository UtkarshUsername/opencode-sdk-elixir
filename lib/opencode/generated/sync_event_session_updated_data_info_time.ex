defmodule OpenCode.Generated.SyncEventSessionUpdatedDataInfoTime do
  @moduledoc """
  Provides struct and type for a SyncEventSessionUpdatedDataInfoTime
  """

  @type t :: %__MODULE__{
          archived: number | nil,
          compacting: integer | nil,
          created: integer | nil,
          updated: integer | nil
        }

  defstruct [:archived, :compacting, :created, :updated]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      archived: {:union, [:number, :null]},
      compacting: {:union, [:integer, :null]},
      created: {:union, [:integer, :null]},
      updated: {:union, [:integer, :null]}
    ]
  end
end
