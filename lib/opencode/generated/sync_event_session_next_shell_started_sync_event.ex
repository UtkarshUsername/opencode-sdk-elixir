defmodule OpenCode.Generated.SyncEventSessionNextShellStartedSyncEvent do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextShellStartedSyncEvent
  """

  @type t :: %__MODULE__{
          aggregate_id: String.t(),
          data: OpenCode.Generated.SyncEventSessionNextShellStartedSyncEventData.t(),
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
      data: {OpenCode.Generated.SyncEventSessionNextShellStartedSyncEventData, :t},
      id: :string,
      seq: :number,
      type: {:const, "session.next.shell.started.1"}
    ]
  end
end
