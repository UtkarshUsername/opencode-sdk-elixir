defmodule OpenCode.Generated.SyncEventSessionNextToolInputStartedData do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextToolInputStartedData
  """

  @type t :: %__MODULE__{
          call_id: String.t(),
          name: String.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:call_id, :name, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [call_id: :string, name: :string, session_id: :string, timestamp: :number]
  end
end
