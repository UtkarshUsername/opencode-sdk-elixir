defmodule OpenCode.Generated.EventSessionNextReasoningStartedProperties do
  @moduledoc """
  Provides struct and type for a EventSessionNextReasoningStartedProperties
  """

  @type t :: %__MODULE__{
          provider_metadata: map | nil,
          reasoning_id: String.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:provider_metadata, :reasoning_id, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [provider_metadata: :map, reasoning_id: :string, session_id: :string, timestamp: :number]
  end
end
