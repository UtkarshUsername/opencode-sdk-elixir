defmodule OpenCode.Generated.SyncEventMessageRemovedSyncEventData do
  @moduledoc """
  Provides struct and type for a SyncEventMessageRemovedSyncEventData
  """

  @type t :: %__MODULE__{message_id: String.t(), session_id: String.t()}

  defstruct [:message_id, :session_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message_id: :string, session_id: :string]
  end
end
