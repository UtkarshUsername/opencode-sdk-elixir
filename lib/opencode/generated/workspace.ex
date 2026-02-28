defmodule OpenCode.Generated.Workspace do
  @moduledoc """
  Provides struct and type for a Workspace
  """

  @type t :: %__MODULE__{
          branch: String.t() | nil,
          config: OpenCode.Generated.WorkspaceConfig.t(),
          id: String.t(),
          project_id: String.t()
        }

  defstruct [:branch, :config, :id, :project_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      branch: {:union, [:string, :null]},
      config: {OpenCode.Generated.WorkspaceConfig, :t},
      id: :string,
      project_id: :string
    ]
  end
end
