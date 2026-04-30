defmodule OpenCode.Generated.GlobalSessionSummary do
  @moduledoc """
  Provides struct and type for a GlobalSessionSummary
  """

  @type t :: %__MODULE__{
          additions: integer,
          deletions: integer,
          diffs: [OpenCode.Generated.SnapshotFileDiff.t()] | nil,
          files: integer
        }

  defstruct [:additions, :deletions, :diffs, :files]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additions: :integer,
      deletions: :integer,
      diffs: [{OpenCode.Generated.SnapshotFileDiff, :t}],
      files: :integer
    ]
  end
end
