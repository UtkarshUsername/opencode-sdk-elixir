defmodule OpenCode.Generated.SyncEventSessionNextShellStartedSyncEventData do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextShellStartedSyncEventData
  """

  @type t :: %__MODULE__{
          call_id: String.t(),
          command: String.t(),
          message_id: String.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:call_id, :command, :message_id, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      call_id: :string,
      command: :string,
      message_id: :string,
      session_id: :string,
      timestamp: :number
    ]
  end
end
