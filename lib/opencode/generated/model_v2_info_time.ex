defmodule OpenCode.Generated.ModelV2InfoTime do
  @moduledoc """
  Provides struct and type for a ModelV2InfoTime
  """

  @type t :: %__MODULE__{released: number}

  defstruct [:released]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [released: :number]
  end
end
