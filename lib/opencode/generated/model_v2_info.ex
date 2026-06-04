defmodule OpenCode.Generated.ModelV2Info do
  @moduledoc """
  Provides struct and type for a ModelV2Info
  """

  @type t :: %__MODULE__{
          api: OpenCode.Generated.ModelV2InfoApi.t(),
          capabilities: OpenCode.Generated.ModelV2InfoCapabilities.t(),
          cost: [OpenCode.Generated.ModelV2InfoCost.t()],
          enabled: boolean,
          family: String.t() | nil,
          id: String.t(),
          limit: OpenCode.Generated.ModelV2InfoLimit.t(),
          name: String.t(),
          provider_id: String.t(),
          request: OpenCode.Generated.ModelV2InfoRequest.t(),
          status: String.t(),
          time: OpenCode.Generated.ModelV2InfoTime.t(),
          variants: [OpenCode.Generated.ModelV2InfoVariants.t()]
        }

  defstruct [
    :api,
    :capabilities,
    :cost,
    :enabled,
    :family,
    :id,
    :limit,
    :name,
    :provider_id,
    :request,
    :status,
    :time,
    :variants
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      api: {OpenCode.Generated.ModelV2InfoApi, :t},
      capabilities: {OpenCode.Generated.ModelV2InfoCapabilities, :t},
      cost: [{OpenCode.Generated.ModelV2InfoCost, :t}],
      enabled: :boolean,
      family: :string,
      id: :string,
      limit: {OpenCode.Generated.ModelV2InfoLimit, :t},
      name: :string,
      provider_id: :string,
      request: {OpenCode.Generated.ModelV2InfoRequest, :t},
      status: {:enum, ["alpha", "beta", "deprecated", "active"]},
      time: {OpenCode.Generated.ModelV2InfoTime, :t},
      variants: [{OpenCode.Generated.ModelV2InfoVariants, :t}]
    ]
  end
end
