defmodule OpenCode.Generated.ProviderV2Info do
  @moduledoc """
  Provides struct and type for a ProviderV2Info
  """

  @type t :: %__MODULE__{
          api: OpenCode.Generated.ProviderV2InfoApi.t(),
          disabled: boolean | nil,
          id: String.t(),
          name: String.t(),
          request: OpenCode.Generated.ProviderV2InfoRequest.t()
        }

  defstruct [:api, :disabled, :id, :name, :request]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      api: {OpenCode.Generated.ProviderV2InfoApi, :t},
      disabled: :boolean,
      id: :string,
      name: :string,
      request: {OpenCode.Generated.ProviderV2InfoRequest, :t}
    ]
  end
end
