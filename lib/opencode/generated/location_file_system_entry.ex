defmodule OpenCode.Generated.LocationFileSystemEntry do
  @moduledoc """
  Provides struct and type for a LocationFileSystemEntry
  """

  @type t :: %__MODULE__{mime: String.t(), path: String.t(), type: String.t(), uri: String.t()}

  defstruct [:mime, :path, :type, :uri]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [mime: :string, path: :string, type: {:enum, ["file", "directory"]}, uri: :string]
  end
end
