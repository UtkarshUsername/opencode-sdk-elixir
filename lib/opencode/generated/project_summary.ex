defmodule OpenCode.Generated.ProjectSummary do
  @moduledoc """
  Provides struct and type for a ProjectSummary
  """

  @type t :: %__MODULE__{id: String.t(), name: String.t() | nil, worktree: String.t()}

  defstruct [:id, :name, :worktree]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [id: :string, name: :string, worktree: :string]
  end
end
