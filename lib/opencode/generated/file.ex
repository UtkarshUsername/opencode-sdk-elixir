defmodule OpenCode.Generated.File do
  @moduledoc """
  Provides struct and type for a File
  """

  @type t :: %__MODULE__{added: integer, path: String.t(), removed: integer, status: String.t()}

  defstruct [:added, :path, :removed, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      added: :integer,
      path: :string,
      removed: :integer,
      status: {:enum, ["added", "deleted", "modified"]}
    ]
  end
end
