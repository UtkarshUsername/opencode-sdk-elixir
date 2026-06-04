defmodule OpenCode.Generated.SyncEventMessagePartRemovedSyncEvent do
  @moduledoc """
  Provides struct and type for a SyncEventMessagePartRemovedSyncEvent
  """

  @type t :: %__MODULE__{
          aggregate_id: String.t(),
          data: OpenCode.Generated.SyncEventMessagePartRemovedSyncEventData.t(),
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
      data: {OpenCode.Generated.SyncEventMessagePartRemovedSyncEventData, :t},
      id: :string,
      seq: :number,
      type: {:const, "message.part.removed.1"}
    ]
  end
end
