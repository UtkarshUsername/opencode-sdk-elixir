defmodule OpenCode.Generated.Path do
  @moduledoc """
  Provides struct and type for a Path
  """

  @type t :: %__MODULE__{
          config: String.t(),
          directory: String.t(),
          home: String.t(),
          state: String.t(),
          worktree: String.t()
        }

  defstruct [:config, :directory, :home, :state, :worktree]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [config: :string, directory: :string, home: :string, state: :string, worktree: :string]
  end
end
