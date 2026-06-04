defmodule OpenCode.Generated.ModelV2Info1 do
  @moduledoc """
  Provides struct and type for a ModelV2Info1
  """

  @type t :: %__MODULE__{
          api: OpenCode.Generated.ModelV2Info1Api.t(),
          capabilities: OpenCode.Generated.ModelV2Info1Capabilities.t(),
          cost: [OpenCode.Generated.ModelV2Info1Cost.t()],
          enabled: boolean,
          family: String.t() | nil,
          id: String.t(),
          limit: OpenCode.Generated.ModelV2Info1Limit.t(),
          name: String.t(),
          provider_id: String.t(),
          request: OpenCode.Generated.ModelV2Info1Request.t(),
          status: String.t(),
          time: OpenCode.Generated.ModelV2Info1Time.t(),
          variants: [OpenCode.Generated.ModelV2Info1Variants.t()]
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
      api: {OpenCode.Generated.ModelV2Info1Api, :t},
      capabilities: {OpenCode.Generated.ModelV2Info1Capabilities, :t},
      cost: [{OpenCode.Generated.ModelV2Info1Cost, :t}],
      enabled: :boolean,
      family: :string,
      id: :string,
      limit: {OpenCode.Generated.ModelV2Info1Limit, :t},
      name: :string,
      provider_id: :string,
      request: {OpenCode.Generated.ModelV2Info1Request, :t},
      status: {:enum, ["alpha", "beta", "deprecated", "active"]},
      time: {OpenCode.Generated.ModelV2Info1Time, :t},
      variants: [{OpenCode.Generated.ModelV2Info1Variants, :t}]
    ]
  end
end
