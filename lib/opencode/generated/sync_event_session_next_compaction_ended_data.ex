defmodule OpenCode.Generated.SyncEventSessionNextCompactionEndedData do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextCompactionEndedData
  """

  @type t :: %__MODULE__{
          include: String.t() | nil,
          session_id: String.t(),
          text: String.t(),
          timestamp: number
        }

  defstruct [:include, :session_id, :text, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [include: :string, session_id: :string, text: :string, timestamp: :number]
  end
end
