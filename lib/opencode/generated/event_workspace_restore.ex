defmodule OpenCode.Generated.EventWorkspaceRestore do
  @moduledoc """
  Provides struct and type for a EventWorkspaceRestore
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventWorkspaceRestoreProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventWorkspaceRestoreProperties, :t},
      type: {:const, "workspace.restore"}
    ]
  end
end
