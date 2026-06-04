defmodule OpenCode.Generated.SyncEventSessionNextStepEndedSyncEventDataTokens do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextStepEndedSyncEventDataTokens
  """

  @type t :: %__MODULE__{
          cache: OpenCode.Generated.SyncEventSessionNextStepEndedSyncEventDataTokensCache.t(),
          input: number,
          output: number,
          reasoning: number
        }

  defstruct [:cache, :input, :output, :reasoning]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cache: {OpenCode.Generated.SyncEventSessionNextStepEndedSyncEventDataTokensCache, :t},
      input: :number,
      output: :number,
      reasoning: :number
    ]
  end
end
