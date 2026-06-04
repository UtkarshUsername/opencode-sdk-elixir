defmodule OpenCode.Generated.ProviderV2Info do
  @moduledoc """
  Provides struct and type for a ProviderV2Info
  """

  @type t :: %__MODULE__{
          api: OpenCode.Generated.ProviderV2InfoApi.t(),
          enabled: false | OpenCode.Generated.ProviderV2InfoEnabled.t(),
          env: [String.t()],
          id: String.t(),
          name: String.t(),
          request: OpenCode.Generated.ProviderV2InfoRequest.t()
        }

  defstruct [:api, :enabled, :env, :id, :name, :request]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      api: {OpenCode.Generated.ProviderV2InfoApi, :t},
      enabled: {:union, [{OpenCode.Generated.ProviderV2InfoEnabled, :t}, const: false]},
      env: [:string],
      id: :string,
      name: :string,
      request: {OpenCode.Generated.ProviderV2InfoRequest, :t}
    ]
  end
end
