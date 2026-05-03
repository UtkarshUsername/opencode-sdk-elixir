defmodule OpenCode.Generated.EventWorkspaceRestore do
  @moduledoc """
  Provides struct and type for a EventWorkspaceRestore
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventWorkspaceRestoreProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventWorkspaceRestoreProperties, :t},
      type: {:const, "workspace.restore"}
    ]
  end
end
