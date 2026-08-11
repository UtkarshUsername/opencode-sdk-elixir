defmodule OpenCode.Generated.SessionCreated do
  @moduledoc """
  Provides struct and type for a SessionCreated
  """

  @type t :: %__MODULE__{
          data: OpenCode.Generated.SessionCreatedData.t(),
          durable: OpenCode.Generated.SessionCreatedDurable.t() | nil,
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
      data: {OpenCode.Generated.SessionCreatedData, :t},
      durable: {OpenCode.Generated.SessionCreatedDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "session.created"}
    ]
  end
end
