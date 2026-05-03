defmodule OpenCode.Generated.SyncEventSessionNextCompactionStartedData do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextCompactionStartedData
  """

  @type t :: %__MODULE__{reason: String.t(), session_id: String.t(), timestamp: number}

  defstruct [:reason, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [reason: {:enum, ["auto", "manual"]}, session_id: :string, timestamp: :number]
  end
end
