defmodule OpenCode.Generated.SyncEventSessionNextStepStartedSyncEventData do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextStepStartedSyncEventData
  """

  @type t :: %__MODULE__{
          agent: String.t(),
          assistant_message_id: String.t(),
          model: OpenCode.Generated.ModelRef.t(),
          session_id: String.t(),
          snapshot: String.t() | nil,
          timestamp: number
        }

  defstruct [:agent, :assistant_message_id, :model, :session_id, :snapshot, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      agent: :string,
      assistant_message_id: :string,
      model: {OpenCode.Generated.ModelRef, :t},
      session_id: :string,
      snapshot: :string,
      timestamp: :number
    ]
  end
end
