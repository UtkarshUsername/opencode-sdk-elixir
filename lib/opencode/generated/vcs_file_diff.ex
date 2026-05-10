defmodule OpenCode.Generated.VcsFileDiff do
  @moduledoc """
  Provides struct and type for a VcsFileDiff
  """

  @type t :: %__MODULE__{
          additions: number,
          deletions: number,
          file: String.t(),
          patch: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:additions, :deletions, :file, :patch, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additions: :number,
      deletions: :number,
      file: :string,
      patch: :string,
      status: {:enum, ["added", "deleted", "modified"]}
    ]
  end
end
