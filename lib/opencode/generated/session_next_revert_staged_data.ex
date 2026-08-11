defmodule OpenCode.Generated.SessionNextRevertStagedData do
  @moduledoc """
  Provides struct and type for a SessionNextRevertStagedData
  """

  @type t :: %__MODULE__{
          revert: OpenCode.Generated.RevertState.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:revert, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [revert: {OpenCode.Generated.RevertState, :t}, session_id: :string, timestamp: :number]
  end
end
