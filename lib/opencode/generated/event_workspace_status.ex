defmodule OpenCode.Generated.EventWorkspaceStatus do
  @moduledoc """
  Provides struct and type for a EventWorkspaceStatus
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventWorkspaceStatusProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventWorkspaceStatusProperties, :t},
      type: {:const, "workspace.status"}
    ]
  end
end
