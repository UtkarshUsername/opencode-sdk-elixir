defmodule OpenCode.Generated.ModelCapabilities do
  @moduledoc """
  Provides struct and type for a ModelCapabilities
  """

  @type t :: %__MODULE__{input: [String.t()], output: [String.t()], tools: boolean}

  defstruct [:input, :output, :tools]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [input: [:string], output: [:string], tools: :boolean]
  end
end
