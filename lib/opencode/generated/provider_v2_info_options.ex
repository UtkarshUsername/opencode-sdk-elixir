defmodule OpenCode.Generated.ProviderV2InfoOptions do
  @moduledoc """
  Provides struct and type for a ProviderV2InfoOptions
  """

  @type t :: %__MODULE__{
          aisdk: OpenCode.Generated.ProviderV2InfoOptionsAisdk.t(),
          body: map,
          headers: map
        }

  defstruct [:aisdk, :body, :headers]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [aisdk: {OpenCode.Generated.ProviderV2InfoOptionsAisdk, :t}, body: :map, headers: :map]
  end
end
