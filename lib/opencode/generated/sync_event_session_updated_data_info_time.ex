defmodule OpenCode.Generated.SyncEventSessionUpdatedDataInfoTime do
  @moduledoc """
  Provides struct and type for a SyncEventSessionUpdatedDataInfoTime
  """

  @type t :: %__MODULE__{
          archived: number | nil,
          compacting: number | nil,
          created: number | nil,
          updated: number | nil
        }

  defstruct [:archived, :compacting, :created, :updated]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      archived: {:union, [:number, :null]},
      compacting: {:union, [:number, :null]},
      created: {:union, [:number, :null]},
      updated: {:union, [:number, :null]}
    ]
  end
end
