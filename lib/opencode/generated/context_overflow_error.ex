defmodule OpenCode.Generated.ContextOverflowError do
  @moduledoc """
  Provides struct and type for a ContextOverflowError
  """

  @type t :: %__MODULE__{data: OpenCode.Generated.ContextOverflowErrorData.t(), name: String.t()}

  defstruct [:data, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: {OpenCode.Generated.ContextOverflowErrorData, :t},
      name: {:const, "ContextOverflowError"}
    ]
  end
end
