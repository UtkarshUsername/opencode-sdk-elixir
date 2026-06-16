defmodule OpenCode.Generated.ContentFilterError do
  @moduledoc """
  Provides struct and type for a ContentFilterError
  """

  @type t :: %__MODULE__{data: OpenCode.Generated.ContentFilterErrorData.t(), name: String.t()}

  defstruct [:data, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: {OpenCode.Generated.ContentFilterErrorData, :t}, name: {:const, "ContentFilterError"}]
  end
end
