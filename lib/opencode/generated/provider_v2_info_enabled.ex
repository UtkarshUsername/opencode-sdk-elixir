defmodule OpenCode.Generated.ProviderV2InfoEnabled do
  @moduledoc """
  Provides struct and types for a ProviderV2InfoEnabled
  """

  @type t :: %__MODULE__{data: map, name: String.t(), service: String.t(), via: String.t()}

  defstruct [:data, :name, :service, :via]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: :map, name: :string, service: :string, via: {:enum, ["account", "custom", "env"]}]
  end
end
