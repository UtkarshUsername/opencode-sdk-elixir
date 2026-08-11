defmodule OpenCode.Generated.SessionNextStepStarted do
  @moduledoc """
  Provides struct and type for a SessionNextStepStarted
  """

  @type t :: %__MODULE__{
          data: OpenCode.Generated.SessionNextStepStartedData.t(),
          durable: OpenCode.Generated.SessionNextStepStartedDurable.t() | nil,
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
      data: {OpenCode.Generated.SessionNextStepStartedData, :t},
      durable: {OpenCode.Generated.SessionNextStepStartedDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "session.next.step.started"}
    ]
  end
end
