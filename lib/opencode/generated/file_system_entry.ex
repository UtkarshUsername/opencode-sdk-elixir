defmodule OpenCode.Generated.FileSystemEntry do
  @moduledoc """
  Provides struct and type for a FileSystemEntry
  """

  @type t :: %__MODULE__{mime: String.t(), path: String.t(), type: String.t()}

  defstruct [:mime, :path, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [mime: :string, path: :string, type: {:enum, ["file", "directory"]}]
  end
end
