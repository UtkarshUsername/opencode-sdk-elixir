defmodule OpenCode.Generated.ProjectDirectories do
  @moduledoc """
  Provides struct and type for a ProjectDirectories
  """

  @type t :: %__MODULE__{directory: String.t(), type: String.t()}

  defstruct [:directory, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [directory: :string, type: {:enum, ["main", "root", "git_worktree"]}]
  end
end
