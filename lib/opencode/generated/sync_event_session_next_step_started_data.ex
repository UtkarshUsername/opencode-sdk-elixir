defmodule OpenCode.Generated.SyncEventSessionNextStepStartedData do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextStepStartedData
  """

  @type t :: %__MODULE__{
          agent: String.t(),
          model: OpenCode.Generated.SyncEventSessionNextStepStartedDataModel.t(),
          session_id: String.t(),
          snapshot: String.t() | nil,
          timestamp: number
        }

  defstruct [:agent, :model, :session_id, :snapshot, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      agent: :string,
      model: {OpenCode.Generated.SyncEventSessionNextStepStartedDataModel, :t},
      session_id: :string,
      snapshot: :string,
      timestamp: :number
    ]
  end
end
