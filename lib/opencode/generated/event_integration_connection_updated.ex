defmodule OpenCode.Generated.EventIntegrationConnectionUpdated do
  @moduledoc """
  Provides struct and type for a EventIntegrationConnectionUpdated
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventIntegrationConnectionUpdatedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventIntegrationConnectionUpdatedProperties, :t},
      type: {:const, "integration.connection.updated"}
    ]
  end
end
