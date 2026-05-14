defmodule OpenCode.Generated.ProviderV2Info do
  @moduledoc """
  Provides struct and type for a ProviderV2Info
  """

  @type t :: %__MODULE__{
          enabled: false | OpenCode.Generated.ProviderV2InfoEnabled.t(),
          endpoint: OpenCode.Generated.ProviderV2InfoEndpoint.t(),
          env: [String.t()],
          id: String.t(),
          name: String.t(),
          options: OpenCode.Generated.ProviderV2InfoOptions.t()
        }

  defstruct [:enabled, :endpoint, :env, :id, :name, :options]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      enabled: {:union, [{OpenCode.Generated.ProviderV2InfoEnabled, :t}, const: false]},
      endpoint: {OpenCode.Generated.ProviderV2InfoEndpoint, :t},
      env: [:string],
      id: :string,
      name: :string,
      options: {OpenCode.Generated.ProviderV2InfoOptions, :t}
    ]
  end
end
