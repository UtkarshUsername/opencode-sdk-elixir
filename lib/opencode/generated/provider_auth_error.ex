defmodule OpenCode.Generated.ProviderAuthError do
  @moduledoc """
  Provides struct and type for a ProviderAuthError
  """

  @type t :: %__MODULE__{data: OpenCode.Generated.ProviderAuthErrorData.t(), name: String.t()}

  defstruct [:data, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: {OpenCode.Generated.ProviderAuthErrorData, :t}, name: {:const, "ProviderAuthError"}]
  end
end
