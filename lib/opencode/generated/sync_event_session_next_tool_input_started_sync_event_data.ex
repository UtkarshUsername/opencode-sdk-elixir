defmodule OpenCode.Generated.SyncEventSessionNextToolInputStartedSyncEventData do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextToolInputStartedSyncEventData
  """

  @type t :: %__MODULE__{
          assistant_message_id: String.t(),
          call_id: String.t(),
          name: String.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:assistant_message_id, :call_id, :name, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      assistant_message_id: :string,
      call_id: :string,
      name: :string,
      session_id: :string,
      timestamp: :number
    ]
  end
end
