defmodule OpenCode.Generated.SessionNextMoved do
  @moduledoc """
  Provides struct and type for a SessionNextMoved
  """

  @type t :: %__MODULE__{
          data: OpenCode.Generated.SessionNextMovedData.t(),
          durable: OpenCode.Generated.SessionNextMovedDurable.t() | nil,
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
      data: {OpenCode.Generated.SessionNextMovedData, :t},
      durable: {OpenCode.Generated.SessionNextMovedDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "session.next.moved"}
    ]
  end
end
