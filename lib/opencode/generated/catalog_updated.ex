defmodule OpenCode.Generated.CatalogUpdated do
  @moduledoc """
  Provides struct and type for a CatalogUpdated
  """

  @type t :: %__MODULE__{
          data: map,
          durable: OpenCode.Generated.CatalogUpdatedDurable.t() | nil,
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
      data: :map,
      durable: {OpenCode.Generated.CatalogUpdatedDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "catalog.updated"}
    ]
  end
end
