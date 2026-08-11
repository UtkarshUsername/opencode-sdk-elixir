defmodule OpenCode.Generated.ProviderV2Info do
  @moduledoc """
  Provides struct and type for a ProviderV2Info
  """

  @type t :: %__MODULE__{
          api: OpenCode.Generated.ProviderAISDK.t() | OpenCode.Generated.ProviderNative.t(),
          disabled: boolean | nil,
          id: String.t(),
          integration_id: String.t() | nil,
          name: String.t(),
          request: OpenCode.Generated.ProviderRequest.t()
        }

  defstruct [:api, :disabled, :id, :integration_id, :name, :request]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      api:
        {:union,
         [{OpenCode.Generated.ProviderAISDK, :t}, {OpenCode.Generated.ProviderNative, :t}]},
      disabled: :boolean,
      id: :string,
      integration_id: :string,
      name: :string,
      request: {OpenCode.Generated.ProviderRequest, :t}
    ]
  end
end
