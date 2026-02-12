defmodule OpenCode.Generated.StructuredOutputError do
  @moduledoc """
  Provides struct and type for a StructuredOutputError
  """

  @type t :: %__MODULE__{data: OpenCode.Generated.StructuredOutputErrorData.t(), name: String.t()}

  defstruct [:data, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: {OpenCode.Generated.StructuredOutputErrorData, :t},
      name: {:const, "StructuredOutputError"}
    ]
  end
end
