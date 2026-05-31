defmodule OpenCode.Generated.EventProjectUpdatedProperties do
  @moduledoc """
  Provides struct and type for a EventProjectUpdatedProperties
  """

  @type t :: %__MODULE__{
          commands: OpenCode.Generated.EventProjectUpdatedPropertiesCommands.t() | nil,
          icon: OpenCode.Generated.EventProjectUpdatedPropertiesIcon.t() | nil,
          id: String.t(),
          name: String.t() | nil,
          sandboxes: [String.t()],
          time: OpenCode.Generated.EventProjectUpdatedPropertiesTime.t(),
          vcs: String.t() | nil,
          worktree: String.t()
        }

  defstruct [:commands, :icon, :id, :name, :sandboxes, :time, :vcs, :worktree]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      commands: {OpenCode.Generated.EventProjectUpdatedPropertiesCommands, :t},
      icon: {OpenCode.Generated.EventProjectUpdatedPropertiesIcon, :t},
      id: :string,
      name: :string,
      sandboxes: [:string],
      time: {OpenCode.Generated.EventProjectUpdatedPropertiesTime, :t},
      vcs: {:const, "git"},
      worktree: :string
    ]
  end
end
