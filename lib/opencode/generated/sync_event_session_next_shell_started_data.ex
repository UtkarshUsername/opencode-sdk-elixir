defmodule OpenCode.Generated.SyncEventSessionNextShellStartedData do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextShellStartedData
  """

  @type t :: %__MODULE__{
          call_id: String.t(),
          command: String.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:call_id, :command, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [call_id: :string, command: :string, session_id: :string, timestamp: :number]
  end
end
