defmodule OpenCode.Generated.FileDiff do
  @moduledoc """
  Provides struct and type for a FileDiff
  """

  @type t :: %__MODULE__{
          additions: integer,
          deletions: integer,
          patch: String.t(),
          path: String.t(),
          status: String.t()
        }

  defstruct [:additions, :deletions, :patch, :path, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additions: :integer,
      deletions: :integer,
      patch: :string,
      path: :string,
      status: {:enum, ["added", "modified", "deleted"]}
    ]
  end
end
