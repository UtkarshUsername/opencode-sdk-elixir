defmodule OpenCode.Generated.LocationInfo do
  @moduledoc """
  Provides struct and type for a LocationInfo
  """

  @type t :: %__MODULE__{
          directory: String.t(),
          project: OpenCode.Generated.LocationInfoProject.t(),
          workspace_id: String.t() | nil
        }

  defstruct [:directory, :project, :workspace_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      directory: :string,
      project: {OpenCode.Generated.LocationInfoProject, :t},
      workspace_id: :string
    ]
  end
end
