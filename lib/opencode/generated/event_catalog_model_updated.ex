defmodule OpenCode.Generated.EventCatalogModelUpdated do
  @moduledoc """
  Provides struct and type for a EventCatalogModelUpdated
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventCatalogModelUpdatedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventCatalogModelUpdatedProperties, :t},
      type: {:const, "catalog.model.updated"}
    ]
  end
end
