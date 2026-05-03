defmodule OpenCode.Generated.SyncEventSessionNextToolInputDeltaData do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextToolInputDeltaData
  """

  @type t :: %__MODULE__{
          call_id: String.t(),
          delta: String.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:call_id, :delta, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [call_id: :string, delta: :string, session_id: :string, timestamp: :number]
  end
end
