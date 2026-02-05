defmodule OpenCode.Generated.SymbolLocation do
  @moduledoc """
  Provides struct and type for a SymbolLocation
  """

  @type t :: %__MODULE__{range: OpenCode.Generated.Range.t(), uri: String.t()}

  defstruct [:range, :uri]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [range: {OpenCode.Generated.Range, :t}, uri: :string]
  end
end
