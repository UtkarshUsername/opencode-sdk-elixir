defmodule OpenCode.Generated.McpBrowserOpenFailedData do
  @moduledoc """
  Provides struct and type for a McpBrowserOpenFailedData
  """

  @type t :: %__MODULE__{mcp_name: String.t(), url: String.t()}

  defstruct [:mcp_name, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [mcp_name: :string, url: :string]
  end
end
