defmodule OpenCode.Generated.Provider do
  @moduledoc """
  Provides API endpoints related to provider
  """

  @default_client OpenCode.Client

  @doc """
  Get provider auth methods

  Retrieve available authentication methods for all AI providers.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec provider_auth(opts :: keyword) ::
          {:ok, map} | {:error, OpenCode.Generated.BadRequestError.t()}
  def provider_auth(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Provider, :provider_auth},
      url: "/provider/auth",
      method: :get,
      query: query,
      response: [{200, :map}, {400, {OpenCode.Generated.BadRequestError, :t}}],
      opts: opts
    })
  end

  @type provider_list_200_json_resp :: %{
          all: [OpenCode.Generated.Provider.t()],
          connected: [String.t()],
          default: map
        }

  @doc """
  List providers

  Get a list of all available AI providers, including both available and connected ones.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec provider_list(opts :: keyword) ::
          {:ok, OpenCode.Generated.Provider.provider_list_200_json_resp()}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def provider_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Provider, :provider_list},
      url: "/provider",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Provider, :provider_list_200_json_resp}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Start OAuth authorization

  Start the OAuth authorization flow for a provider.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec provider_oauth_authorize(providerID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.ProviderAuthAuthorization.t()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.ProviderAuthError1.t()}
  def provider_oauth_authorize(providerID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [providerID: providerID, body: body],
      call: {OpenCode.Generated.Provider, :provider_oauth_authorize},
      url: "/provider/#{providerID}/oauth/authorize",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.ProviderAuthAuthorization, :t}},
        {400,
         {:union,
          [
            {OpenCode.Generated.InvalidRequestError, :t},
            {OpenCode.Generated.ProviderAuthError1, :t}
          ]}}
      ],
      opts: opts
    })
  end

  @doc """
  Handle OAuth callback

  Handle the OAuth callback from a provider after user authorization.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec provider_oauth_callback(providerID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.ProviderAuthError1.t()}
  def provider_oauth_callback(providerID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [providerID: providerID, body: body],
      call: {OpenCode.Generated.Provider, :provider_oauth_callback},
      url: "/provider/#{providerID}/oauth/callback",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, :boolean},
        {400,
         {:union,
          [
            {OpenCode.Generated.InvalidRequestError, :t},
            {OpenCode.Generated.ProviderAuthError1, :t}
          ]}}
      ],
      opts: opts
    })
  end

  @type t :: %__MODULE__{
          env: [String.t()],
          id: String.t(),
          key: String.t() | nil,
          models: map,
          name: String.t(),
          options: map,
          source: String.t()
        }

  defstruct [:env, :id, :key, :models, :name, :options, :source]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:provider_list_200_json_resp) do
    [all: [{OpenCode.Generated.Provider, :t}], connected: [:string], default: :map]
  end

  def __fields__(:t) do
    [
      env: [:string],
      id: :string,
      key: :string,
      models: :map,
      name: :string,
      options: :map,
      source: {:enum, ["env", "config", "custom", "api"]}
    ]
  end
end
