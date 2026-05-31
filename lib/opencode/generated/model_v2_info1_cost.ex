defmodule OpenCode.Generated.ModelV2Info1Cost do
  @moduledoc """
  Provides struct and type for a ModelV2Info1Cost
  """

  @type t :: %__MODULE__{
          cache: OpenCode.Generated.ModelV2Info1CostCache.t(),
          input: number,
          output: number,
          tier: OpenCode.Generated.ModelV2Info1CostTier.t() | nil
        }

  defstruct [:cache, :input, :output, :tier]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cache: {OpenCode.Generated.ModelV2Info1CostCache, :t},
      input: :number,
      output: :number,
      tier: {OpenCode.Generated.ModelV2Info1CostTier, :t}
    ]
  end
end
