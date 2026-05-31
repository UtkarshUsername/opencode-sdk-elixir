defmodule OpenCode.Generated.ModelV2Info1CostTier do
  @moduledoc """
  Provides struct and type for a ModelV2Info1CostTier
  """

  @type t :: %__MODULE__{size: integer, type: String.t()}

  defstruct [:size, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [size: :integer, type: {:const, "context"}]
  end
end
