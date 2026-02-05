defmodule OpenCode.Generated.APIError do
  @moduledoc """
  Provides struct and type for a APIError
  """

  @type t :: %__MODULE__{data: OpenCode.Generated.APIErrorData.t(), name: String.t()}

  defstruct [:data, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: {OpenCode.Generated.APIErrorData, :t}, name: {:const, "APIError"}]
  end
end
