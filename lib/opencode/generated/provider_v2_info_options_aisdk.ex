defmodule OpenCode.Generated.ProviderV2InfoOptionsAisdk do
  @moduledoc """
  Provides struct and type for a ProviderV2InfoOptionsAisdk
  """

  @type t :: %__MODULE__{provider: map, request: map}

  defstruct [:provider, :request]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [provider: :map, request: :map]
  end
end
