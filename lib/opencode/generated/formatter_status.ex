defmodule OpenCode.Generated.FormatterStatus do
  @moduledoc """
  Provides struct and type for a FormatterStatus
  """

  @type t :: %__MODULE__{enabled: boolean, extensions: [String.t()], name: String.t()}

  defstruct [:enabled, :extensions, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [enabled: :boolean, extensions: [:string], name: :string]
  end
end
