defmodule OpenCode.Generated.ModelV2InfoCostCache do
  @moduledoc """
  Provides struct and type for a ModelV2InfoCostCache
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
