defmodule OpenCode.Generated.V2Providers do
  @moduledoc """
  Provides API endpoints related to v2 providers
  """

  @default_client OpenCode.Client

  @doc """
  Get v2 provider

  Retrieve a single v2 AI provider so clients can inspect its availability and endpoint settings.

  ## Options

    * `location`

  """
  @spec v2_provider_get(providerID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.ProviderV2Info.t()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.ProviderNotFoundError.t()
             | OpenCode.Generated.ServiceUnavailableError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_provider_get(providerID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [providerID: providerID],
      call: {OpenCode.Generated.V2Providers, :v2_provider_get},
      url: "/api/provider/#{providerID}",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.ProviderV2Info, :t}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404, {OpenCode.Generated.ProviderNotFoundError, :t}},
        {503, {OpenCode.Generated.ServiceUnavailableError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  List v2 providers

  Retrieve active v2 AI providers so clients can show provider availability and configuration.

  ## Options

    * `location`

  """
  @spec v2_provider_list(opts :: keyword) ::
          {:ok, [OpenCode.Generated.ProviderV2Info.t()]}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.ServiceUnavailableError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_provider_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.V2Providers, :v2_provider_list},
      url: "/api/provider",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.ProviderV2Info, :t}]},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {503, {OpenCode.Generated.ServiceUnavailableError, :t}}
      ],
      opts: opts
    })
  end
end
