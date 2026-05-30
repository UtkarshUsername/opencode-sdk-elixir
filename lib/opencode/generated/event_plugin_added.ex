defmodule OpenCode.Generated.EventPluginAdded do
  @moduledoc """
  Provides struct and type for a EventPluginAdded
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventPluginAddedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventPluginAddedProperties, :t},
      type: {:const, "plugin.added"}
    ]
  end
end
