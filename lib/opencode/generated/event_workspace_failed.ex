defmodule OpenCode.Generated.EventWorkspaceFailed do
  @moduledoc """
  Provides struct and type for a EventWorkspaceFailed
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventWorkspaceFailedProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventWorkspaceFailedProperties, :t},
      type: {:const, "workspace.failed"}
    ]
  end
end
