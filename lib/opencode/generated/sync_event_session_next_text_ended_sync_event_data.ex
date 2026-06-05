defmodule OpenCode.Generated.SyncEventSessionNextTextEndedSyncEventData do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextTextEndedSyncEventData
  """

  @type t :: %__MODULE__{
          assistant_message_id: String.t(),
          session_id: String.t(),
          text: String.t(),
          text_id: String.t(),
          timestamp: number
        }

  defstruct [:assistant_message_id, :session_id, :text, :text_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      assistant_message_id: :string,
      session_id: :string,
      text: :string,
      text_id: :string,
      timestamp: :number
    ]
  end
end
