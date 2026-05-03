defmodule OpenCode.Generated.EventSessionNextReasoningDeltaProperties do
  @moduledoc """
  Provides struct and type for a EventSessionNextReasoningDeltaProperties
  """

  @type t :: %__MODULE__{
          delta: String.t(),
          reasoning_id: String.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:delta, :reasoning_id, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [delta: :string, reasoning_id: :string, session_id: :string, timestamp: :number]
  end
end
