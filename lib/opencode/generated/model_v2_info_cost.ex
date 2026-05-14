defmodule OpenCode.Generated.ModelV2InfoCost do
  @moduledoc """
  Provides struct and type for a ModelV2InfoCost
  """

  @type t :: %__MODULE__{
          cache: OpenCode.Generated.ModelV2InfoCostCache.t(),
          input: number,
          output: number,
          tier: OpenCode.Generated.ModelV2InfoCostTier.t() | nil
        }

  defstruct [:cache, :input, :output, :tier]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cache: {OpenCode.Generated.ModelV2InfoCostCache, :t},
      input: :number,
      output: :number,
      tier: {OpenCode.Generated.ModelV2InfoCostTier, :t}
    ]
  end
end
