defmodule OpenCode.Generated.SessionDiffData do
  @moduledoc """
  Provides struct and type for a SessionDiffData
  """

  @type t :: %__MODULE__{diff: [OpenCode.Generated.SnapshotFileDiff.t()], session_id: String.t()}

  defstruct [:diff, :session_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [diff: [{OpenCode.Generated.SnapshotFileDiff, :t}], session_id: :string]
  end
end
