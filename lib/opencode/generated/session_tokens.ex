defmodule OpenCode.Generated.SessionTokens do
  @moduledoc """
  Provides struct and type for a SessionTokens
  """

  @type t :: %__MODULE__{
          cache: OpenCode.Generated.SessionTokensCache.t(),
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
      cache: {OpenCode.Generated.SessionTokensCache, :t},
      input: :number,
      output: :number,
      reasoning: :number
    ]
  end
end
