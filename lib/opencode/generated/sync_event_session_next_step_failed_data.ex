defmodule OpenCode.Generated.SyncEventSessionNextStepFailedData do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextStepFailedData
  """

  @type t :: %__MODULE__{
          error: OpenCode.Generated.SessionErrorUnknown.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:error, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [error: {OpenCode.Generated.SessionErrorUnknown, :t}, session_id: :string, timestamp: :number]
  end
end
