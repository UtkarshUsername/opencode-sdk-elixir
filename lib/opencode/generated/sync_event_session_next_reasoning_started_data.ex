defmodule OpenCode.Generated.SyncEventSessionNextReasoningStartedData do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextReasoningStartedData
  """

  @type t :: %__MODULE__{reasoning_id: String.t(), session_id: String.t(), timestamp: number}

  defstruct [:reasoning_id, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [reasoning_id: :string, session_id: :string, timestamp: :number]
  end
end
