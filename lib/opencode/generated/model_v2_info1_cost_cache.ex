defmodule OpenCode.Generated.ModelV2Info1CostCache do
  @moduledoc """
  Provides struct and type for a ModelV2Info1CostCache
  """

  @type t :: %__MODULE__{read: number, write: number}

  defstruct [:read, :write]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [read: :number, write: :number]
  end
end
