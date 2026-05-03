defmodule OpenCode.Generated.EventMcpToolsChanged do
  @moduledoc """
  Provides struct and type for a EventMcpToolsChanged
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventMcpToolsChangedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventMcpToolsChangedProperties, :t},
      type: {:const, "mcp.tools.changed"}
    ]
  end
end
