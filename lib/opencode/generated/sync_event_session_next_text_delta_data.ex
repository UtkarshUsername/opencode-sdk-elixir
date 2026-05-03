defmodule OpenCode.Generated.SyncEventSessionNextTextDeltaData do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextTextDeltaData
  """

  @type t :: %__MODULE__{delta: String.t(), session_id: String.t(), timestamp: number}

  defstruct [:delta, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [delta: :string, session_id: :string, timestamp: :number]
  end
end
