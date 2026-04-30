defmodule OpenCode.Generated.StepFinishPartTokens do
  @moduledoc """
  Provides struct and type for a StepFinishPartTokens
  """

  @type t :: %__MODULE__{
          cache: OpenCode.Generated.StepFinishPartTokensCache.t(),
          input: integer,
          output: integer,
          reasoning: integer,
          total: integer | nil
        }

  defstruct [:cache, :input, :output, :reasoning, :total]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cache: {OpenCode.Generated.StepFinishPartTokensCache, :t},
      input: :integer,
      output: :integer,
      reasoning: :integer,
      total: :integer
    ]
  end
end
