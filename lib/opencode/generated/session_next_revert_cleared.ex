defmodule OpenCode.Generated.SessionNextRevertCleared do
  @moduledoc """
  Provides struct and type for a SessionNextRevertCleared
  """

  @type t :: %__MODULE__{
          data: OpenCode.Generated.SessionNextRevertClearedData.t(),
          durable: OpenCode.Generated.SessionNextRevertClearedDurable.t() | nil,
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
      data: {OpenCode.Generated.SessionNextRevertClearedData, :t},
      durable: {OpenCode.Generated.SessionNextRevertClearedDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "session.next.revert.cleared"}
    ]
  end
end
