defmodule OpenCode.Generated.GlobalSessionSummary do
  @moduledoc """
  Provides struct and type for a GlobalSessionSummary
  """

  @type t :: %__MODULE__{
          additions: number,
          deletions: number,
          diffs: [OpenCode.Generated.FileDiff.t()] | nil,
          files: number
        }

  defstruct [:additions, :deletions, :diffs, :files]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additions: :number,
      deletions: :number,
      diffs: [{OpenCode.Generated.FileDiff, :t}],
      files: :number
    ]
  end
end
