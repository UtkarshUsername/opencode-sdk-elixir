defmodule OpenCode.Generated.FileDiff do
  @moduledoc """
  Provides struct and type for a FileDiff
  """

  @type t :: %__MODULE__{
          additions: number,
          after: String.t(),
          before: String.t(),
          deletions: number,
          file: String.t(),
          status: String.t() | nil
        }

  defstruct [:additions, :after, :before, :deletions, :file, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additions: :number,
      after: :string,
      before: :string,
      deletions: :number,
      file: :string,
      status: {:enum, ["added", "deleted", "modified"]}
    ]
  end
end
