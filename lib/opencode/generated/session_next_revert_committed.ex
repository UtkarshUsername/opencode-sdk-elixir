defmodule OpenCode.Generated.SessionNextRevertCommitted do
  @moduledoc """
  Provides struct and type for a SessionNextRevertCommitted
  """

  @type t :: %__MODULE__{
          data: OpenCode.Generated.SessionNextRevertCommittedData.t(),
          durable: OpenCode.Generated.SessionNextRevertCommittedDurable.t() | nil,
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
      data: {OpenCode.Generated.SessionNextRevertCommittedData, :t},
      durable: {OpenCode.Generated.SessionNextRevertCommittedDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "session.next.revert.committed"}
    ]
  end
end
