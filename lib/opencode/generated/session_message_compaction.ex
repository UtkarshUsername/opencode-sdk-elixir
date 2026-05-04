defmodule OpenCode.Generated.SessionMessageCompaction do
  @moduledoc """
  Provides struct and type for a SessionMessageCompaction
  """

  @type t :: %__MODULE__{
          id: String.t(),
          include: String.t() | nil,
          metadata: map | nil,
          reason: String.t(),
          summary: String.t(),
          time: OpenCode.Generated.SessionMessageCompactionTime.t(),
          type: String.t()
        }

  defstruct [:id, :include, :metadata, :reason, :summary, :time, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      include: :string,
      metadata: :map,
      reason: {:enum, ["auto", "manual"]},
      summary: :string,
      time: {OpenCode.Generated.SessionMessageCompactionTime, :t},
      type: {:const, "compaction"}
    ]
  end
end
