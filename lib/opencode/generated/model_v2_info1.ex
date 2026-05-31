defmodule OpenCode.Generated.ModelV2Info1 do
  @moduledoc """
  Provides struct and type for a ModelV2Info1
  """

  @type t :: %__MODULE__{
          api_id: String.t(),
          capabilities: OpenCode.Generated.ModelV2Info1Capabilities.t(),
          cost: [OpenCode.Generated.ModelV2Info1Cost.t()],
          enabled: boolean,
          endpoint: OpenCode.Generated.ModelV2Info1Endpoint.t(),
          family: String.t() | nil,
          id: String.t(),
          limit: OpenCode.Generated.ModelV2Info1Limit.t(),
          name: String.t(),
          options: OpenCode.Generated.ModelV2Info1Options.t(),
          provider_id: String.t(),
          status: String.t(),
          time: OpenCode.Generated.ModelV2Info1Time.t(),
          variants: [OpenCode.Generated.ModelV2Info1Variants.t()]
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
      capabilities: {OpenCode.Generated.ModelV2Info1Capabilities, :t},
      cost: [{OpenCode.Generated.ModelV2Info1Cost, :t}],
      enabled: :boolean,
      endpoint: {OpenCode.Generated.ModelV2Info1Endpoint, :t},
      family: :string,
      id: :string,
      limit: {OpenCode.Generated.ModelV2Info1Limit, :t},
      name: :string,
      options: {OpenCode.Generated.ModelV2Info1Options, :t},
      provider_id: :string,
      status: {:enum, ["alpha", "beta", "deprecated", "active"]},
      time: {OpenCode.Generated.ModelV2Info1Time, :t},
      variants: [{OpenCode.Generated.ModelV2Info1Variants, :t}]
    ]
  end
end
