defmodule OpenCode.Generated.StepFinishPartTokens do
  @moduledoc """
  Provides struct and type for a StepFinishPartTokens
  """

  @type t :: %__MODULE__{
          cache: OpenCode.Generated.StepFinishPartTokensCache.t(),
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
      cache: {OpenCode.Generated.StepFinishPartTokensCache, :t},
      input: :number,
      output: :number,
      reasoning: :number
    ]
  end
end
