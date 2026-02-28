defmodule OpenCode.Generated.WorkspaceConfig do
  @moduledoc """
  Provides struct and type for a WorkspaceConfig
  """

  @type t :: %__MODULE__{directory: String.t(), type: String.t()}

  defstruct [:directory, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [directory: :string, type: {:const, "worktree"}]
  end
end
