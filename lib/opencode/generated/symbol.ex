defmodule OpenCode.Generated.Symbol do
  @moduledoc """
  Provides struct and type for a Symbol
  """

  @type t :: %__MODULE__{
          kind: number,
          location: OpenCode.Generated.SymbolLocation.t(),
          name: String.t()
        }

  defstruct [:kind, :location, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [kind: :number, location: {OpenCode.Generated.SymbolLocation, :t}, name: :string]
  end
end
