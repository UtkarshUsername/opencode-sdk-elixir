defmodule OpenCode.Generated.SnapshotFileDiff do
  @moduledoc """
  Provides struct and type for a SnapshotFileDiff
  """

  @type t :: %__MODULE__{
          additions: integer,
          deletions: integer,
          file: String.t(),
          patch: String.t(),
          status: String.t() | nil
        }

  defstruct [:additions, :deletions, :file, :patch, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additions: :integer,
      deletions: :integer,
      file: :string,
      patch: :string,
      status: {:enum, ["added", "deleted", "modified"]}
    ]
  end
end
