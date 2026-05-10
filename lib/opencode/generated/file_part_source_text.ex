defmodule OpenCode.Generated.FilePartSourceText do
  @moduledoc """
  Provides struct and type for a FilePartSourceText
  """

  @type t :: %__MODULE__{end: number, start: number, value: String.t()}

  defstruct [:end, :start, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [end: :number, start: :number, value: :string]
  end
end
