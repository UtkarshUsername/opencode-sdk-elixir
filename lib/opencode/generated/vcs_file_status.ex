defmodule OpenCode.Generated.VcsFileStatus do
  @moduledoc """
  Provides struct and type for a VcsFileStatus
  """

  @type t :: %__MODULE__{
          additions: integer,
          deletions: integer,
          file: String.t(),
          status: String.t()
        }

  defstruct [:additions, :deletions, :file, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additions: :integer,
      deletions: :integer,
      file: :string,
      status: {:enum, ["added", "deleted", "modified"]}
    ]
  end
end
