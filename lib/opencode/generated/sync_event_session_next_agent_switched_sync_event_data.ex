defmodule OpenCode.Generated.SyncEventSessionNextAgentSwitchedSyncEventData do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextAgentSwitchedSyncEventData
  """

  @type t :: %__MODULE__{
          agent: String.t(),
          message_id: String.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:agent, :message_id, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [agent: :string, message_id: :string, session_id: :string, timestamp: :number]
  end
end
