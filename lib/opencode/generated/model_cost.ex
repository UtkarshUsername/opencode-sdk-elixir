defmodule OpenCode.Generated.ModelCost do
  @moduledoc """
  Provides struct and type for a ModelCost
  """

  @type t :: %__MODULE__{
          cache: OpenCode.Generated.ModelCostCache.t(),
          input: number,
          output: number,
          tier: OpenCode.Generated.ModelCostTier.t() | nil
        }

  defstruct [:cache, :input, :output, :tier]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cache: {OpenCode.Generated.ModelCostCache, :t},
      input: :number,
      output: :number,
      tier: {OpenCode.Generated.ModelCostTier, :t}
    ]
  end
end
