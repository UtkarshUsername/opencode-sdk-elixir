defmodule OpenCode.Generated.SyncEventSessionNextRetriedSyncEvent do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextRetriedSyncEvent
  """

  @type t :: %__MODULE__{
          aggregate_id: String.t(),
          data: OpenCode.Generated.SyncEventSessionNextRetriedSyncEventData.t(),
          id: String.t(),
          seq: number,
          type: String.t()
        }

  defstruct [:aggregate_id, :data, :id, :seq, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      aggregate_id: :string,
      data: {OpenCode.Generated.SyncEventSessionNextRetriedSyncEventData, :t},
      id: :string,
      seq: :number,
      type: {:const, "session.next.retried.1"}
    ]
  end
end
