defmodule OpenCode.Generated.SessionNextRevertClearedData do
  @moduledoc """
  Provides struct and type for a SessionNextRevertClearedData
  """

  @type t :: %__MODULE__{session_id: String.t(), timestamp: number}

  defstruct [:session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [session_id: :string, timestamp: :number]
  end
end
