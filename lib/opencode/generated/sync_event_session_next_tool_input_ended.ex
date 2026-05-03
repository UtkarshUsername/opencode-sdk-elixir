defmodule OpenCode.Generated.SyncEventSessionNextToolInputEnded do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextToolInputEnded
  """

  @type t :: %__MODULE__{
          aggregate_id: String.t(),
          data: OpenCode.Generated.SyncEventSessionNextToolInputEndedData.t(),
          id: String.t(),
          name: String.t(),
          seq: number,
          type: String.t()
        }

  defstruct [:aggregate_id, :data, :id, :name, :seq, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      aggregate_id: {:const, "sessionID"},
      data: {OpenCode.Generated.SyncEventSessionNextToolInputEndedData, :t},
      id: :string,
      name: {:const, "session.next.tool.input.ended.1"},
      seq: :number,
      type: {:const, "sync"}
    ]
  end
end
