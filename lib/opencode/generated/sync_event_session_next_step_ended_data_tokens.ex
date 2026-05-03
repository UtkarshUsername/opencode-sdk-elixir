defmodule OpenCode.Generated.SyncEventSessionNextStepEndedDataTokens do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextStepEndedDataTokens
  """

  @type t :: %__MODULE__{
          cache: OpenCode.Generated.SyncEventSessionNextStepEndedDataTokensCache.t(),
          input: integer,
          output: integer,
          reasoning: integer
        }

  defstruct [:cache, :input, :output, :reasoning]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cache: {OpenCode.Generated.SyncEventSessionNextStepEndedDataTokensCache, :t},
      input: :integer,
      output: :integer,
      reasoning: :integer
    ]
  end
end
