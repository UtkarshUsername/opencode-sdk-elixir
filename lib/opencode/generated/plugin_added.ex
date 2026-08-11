defmodule OpenCode.Generated.PluginAdded do
  @moduledoc """
  Provides struct and type for a PluginAdded
  """

  @type t :: %__MODULE__{
          data: OpenCode.Generated.PluginAddedData.t(),
          durable: OpenCode.Generated.PluginAddedDurable.t() | nil,
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
      data: {OpenCode.Generated.PluginAddedData, :t},
      durable: {OpenCode.Generated.PluginAddedDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "plugin.added"}
    ]
  end
end
