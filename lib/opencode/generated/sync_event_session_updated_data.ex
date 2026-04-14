defmodule OpenCode.Generated.SyncEventSessionUpdatedData do
  @moduledoc """
  Provides struct and type for a SyncEventSessionUpdatedData
  """

  @type t :: %__MODULE__{
          info: OpenCode.Generated.SyncEventSessionUpdatedDataInfo.t(),
          session_id: String.t()
        }

  defstruct [:info, :session_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [info: {OpenCode.Generated.SyncEventSessionUpdatedDataInfo, :t}, session_id: :string]
  end
end
