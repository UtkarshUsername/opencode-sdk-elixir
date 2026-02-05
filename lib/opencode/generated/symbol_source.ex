defmodule OpenCode.Generated.SymbolSource do
  @moduledoc """
  Provides struct and type for a SymbolSource
  """

  @type t :: %__MODULE__{
          kind: integer,
          name: String.t(),
          path: String.t(),
          range: OpenCode.Generated.Range.t(),
          text: OpenCode.Generated.FilePartSourceText.t(),
          type: String.t()
        }

  defstruct [:kind, :name, :path, :range, :text, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      kind: :integer,
      name: :string,
      path: :string,
      range: {OpenCode.Generated.Range, :t},
      text: {OpenCode.Generated.FilePartSourceText, :t},
      type: {:const, "symbol"}
    ]
  end
end
