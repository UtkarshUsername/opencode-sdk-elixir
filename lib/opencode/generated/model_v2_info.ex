defmodule OpenCode.Generated.ModelV2Info do
  @moduledoc """
  Provides struct and type for a ModelV2Info
  """

  @type t :: %__MODULE__{
          api_id: String.t(),
          capabilities: OpenCode.Generated.ModelV2InfoCapabilities.t(),
          cost: [OpenCode.Generated.ModelV2InfoCost.t()],
          enabled: boolean,
          endpoint: OpenCode.Generated.ModelV2InfoEndpoint.t(),
          family: String.t() | nil,
          id: String.t(),
          limit: OpenCode.Generated.ModelV2InfoLimit.t(),
          name: String.t(),
          options: OpenCode.Generated.ModelV2InfoOptions.t(),
          provider_id: String.t(),
          status: String.t(),
          time: OpenCode.Generated.ModelV2InfoTime.t(),
          variants: [OpenCode.Generated.ModelV2InfoVariants.t()]
        }

  defstruct [
    :api_id,
    :capabilities,
    :cost,
    :enabled,
    :endpoint,
    :family,
    :id,
    :limit,
    :name,
    :options,
    :provider_id,
    :status,
    :time,
    :variants
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      api_id: :string,
      capabilities: {OpenCode.Generated.ModelV2InfoCapabilities, :t},
      cost: [{OpenCode.Generated.ModelV2InfoCost, :t}],
      enabled: :boolean,
      endpoint: {OpenCode.Generated.ModelV2InfoEndpoint, :t},
      family: :string,
      id: :string,
      limit: {OpenCode.Generated.ModelV2InfoLimit, :t},
      name: :string,
      options: {OpenCode.Generated.ModelV2InfoOptions, :t},
      provider_id: :string,
      status: {:enum, ["alpha", "beta", "deprecated", "active"]},
      time: {OpenCode.Generated.ModelV2InfoTime, :t},
      variants: [{OpenCode.Generated.ModelV2InfoVariants, :t}]
    ]
  end
end
