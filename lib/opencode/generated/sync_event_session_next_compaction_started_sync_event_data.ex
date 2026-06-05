defmodule OpenCode.Generated.SyncEventSessionNextCompactionStartedSyncEventData do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextCompactionStartedSyncEventData
  """

  @type t :: %__MODULE__{
          message_id: String.t(),
          reason: String.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:message_id, :reason, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      message_id: :string,
      reason: {:enum, ["auto", "manual"]},
      session_id: :string,
      timestamp: :number
    ]
  end
end
