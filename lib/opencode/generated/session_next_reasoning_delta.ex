defmodule OpenCode.Generated.SessionNextReasoningDelta do
  @moduledoc """
  Provides struct and type for a SessionNextReasoningDelta
  """

  @type t :: %__MODULE__{
          data: OpenCode.Generated.SessionNextReasoningDeltaData.t(),
          durable: OpenCode.Generated.SessionNextReasoningDeltaDurable.t() | nil,
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
      data: {OpenCode.Generated.SessionNextReasoningDeltaData, :t},
      durable: {OpenCode.Generated.SessionNextReasoningDeltaDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "session.next.reasoning.delta"}
    ]
  end
end
