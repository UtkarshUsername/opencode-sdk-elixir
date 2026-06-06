defmodule OpenCode.Generated.SessionMessageCompaction do
  @moduledoc """
  Provides struct and type for a SessionMessageCompaction
  """

  @type t :: %__MODULE__{
          id: String.t(),
          metadata: map | nil,
          reason: String.t(),
          recent: String.t(),
          summary: String.t(),
          time: OpenCode.Generated.SessionMessageCompactionTime.t(),
          type: String.t()
        }

  defstruct [:id, :metadata, :reason, :recent, :summary, :time, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      metadata: :map,
      reason: {:enum, ["auto", "manual"]},
      recent: :string,
      summary: :string,
      time: {OpenCode.Generated.SessionMessageCompactionTime, :t},
      type: {:const, "compaction"}
    ]
  end
end
