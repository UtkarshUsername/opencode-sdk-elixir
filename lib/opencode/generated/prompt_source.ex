defmodule OpenCode.Generated.PromptSource do
  @moduledoc """
  Provides struct and type for a PromptSource
  """

  @type t :: %__MODULE__{end: number, start: number, text: String.t()}

  defstruct [:end, :start, :text]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [end: :number, start: :number, text: :string]
  end
end
