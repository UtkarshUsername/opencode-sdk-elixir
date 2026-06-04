defmodule OpenCode.Generated.SyncEventSessionNextCompactionDelta do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextCompactionDelta
  """

  @type t :: %__MODULE__{
          id: String.t(),
          sync_event: OpenCode.Generated.SyncEventSessionNextCompactionDeltaSyncEvent.t(),
          type: String.t()
        }

  defstruct [:id, :sync_event, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      sync_event: {OpenCode.Generated.SyncEventSessionNextCompactionDeltaSyncEvent, :t},
      type: {:const, "sync"}
    ]
  end
end
