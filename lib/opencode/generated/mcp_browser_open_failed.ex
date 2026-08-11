defmodule OpenCode.Generated.McpBrowserOpenFailed do
  @moduledoc """
  Provides struct and type for a McpBrowserOpenFailed
  """

  @type t :: %__MODULE__{
          data: OpenCode.Generated.McpBrowserOpenFailedData.t(),
          durable: OpenCode.Generated.McpBrowserOpenFailedDurable.t() | nil,
          id: String.t(),
          location: OpenCode.Generated.LocationRef.t() | nil,
          metadata: map | nil,
          type: String.t()
        }

  defstruct [:data, :durable, :id, :location, :metadata, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: {OpenCode.Generated.McpBrowserOpenFailedData, :t},
      durable: {OpenCode.Generated.McpBrowserOpenFailedDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "mcp.browser.open.failed"}
    ]
  end
end
