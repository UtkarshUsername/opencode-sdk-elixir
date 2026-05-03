defmodule OpenCode.Generated.SyncEventSessionNextStepEndedData do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextStepEndedData
  """

  @type t :: %__MODULE__{
          cost: number,
          finish: String.t(),
          session_id: String.t(),
          snapshot: String.t() | nil,
          timestamp: number,
          tokens: OpenCode.Generated.SyncEventSessionNextStepEndedDataTokens.t()
        }

  defstruct [:cost, :finish, :session_id, :snapshot, :timestamp, :tokens]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cost: :number,
      finish: :string,
      session_id: :string,
      snapshot: :string,
      timestamp: :number,
      tokens: {OpenCode.Generated.SyncEventSessionNextStepEndedDataTokens, :t}
    ]
  end
end
