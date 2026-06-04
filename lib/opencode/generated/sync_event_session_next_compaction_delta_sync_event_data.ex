defmodule OpenCode.Generated.SyncEventSessionNextCompactionDeltaSyncEventData do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextCompactionDeltaSyncEventData
  """

  @type t :: %__MODULE__{session_id: String.t(), text: String.t(), timestamp: number}

  defstruct [:session_id, :text, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [session_id: :string, text: :string, timestamp: :number]
  end
end
