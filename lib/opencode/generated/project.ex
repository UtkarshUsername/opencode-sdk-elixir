defmodule OpenCode.Generated.Project do
  @moduledoc """
  Provides struct and type for a Project
  """

  @type t :: %__MODULE__{
          commands: OpenCode.Generated.ProjectCommands.t() | nil,
          icon: OpenCode.Generated.ProjectIcon.t() | nil,
          id: String.t(),
          name: String.t() | nil,
          sandboxes: [String.t()],
          time: OpenCode.Generated.ProjectTime.t(),
          vcs: String.t() | nil,
          worktree: String.t()
        }

  defstruct [:commands, :icon, :id, :name, :sandboxes, :time, :vcs, :worktree]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      commands: {OpenCode.Generated.ProjectCommands, :t},
      icon: {OpenCode.Generated.ProjectIcon, :t},
      id: :string,
      name: :string,
      sandboxes: [:string],
      time: {OpenCode.Generated.ProjectTime, :t},
      vcs: {:const, "git"},
      worktree: :string
    ]
  end
end
