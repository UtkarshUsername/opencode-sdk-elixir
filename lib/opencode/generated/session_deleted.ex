defmodule OpenCode.Generated.SessionDeleted do
  @moduledoc """
  Provides struct and type for a SessionDeleted
  """

  @type t :: %__MODULE__{
          data: OpenCode.Generated.SessionDeletedData.t(),
          durable: OpenCode.Generated.SessionDeletedDurable.t() | nil,
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
      data: {OpenCode.Generated.SessionDeletedData, :t},
      durable: {OpenCode.Generated.SessionDeletedDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "session.deleted"}
    ]
  end
end
