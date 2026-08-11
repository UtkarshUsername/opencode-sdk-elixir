defmodule OpenCode.Generated.SyncEventSessionNextStepEndedSyncEventData do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextStepEndedSyncEventData
  """

  @type t :: %__MODULE__{
          assistant_message_id: String.t(),
          cost: number,
          files: [String.t()] | nil,
          finish: String.t(),
          session_id: String.t(),
          snapshot: String.t() | nil,
          timestamp: number,
          tokens: OpenCode.Generated.SyncEventSessionNextStepEndedSyncEventDataTokens.t()
        }

  defstruct [
    :assistant_message_id,
    :cost,
    :files,
    :finish,
    :session_id,
    :snapshot,
    :timestamp,
    :tokens
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      assistant_message_id: :string,
      cost: :number,
      files: [:string],
      finish: :string,
      session_id: :string,
      snapshot: :string,
      timestamp: :number,
      tokens: {OpenCode.Generated.SyncEventSessionNextStepEndedSyncEventDataTokens, :t}
    ]
  end
end
