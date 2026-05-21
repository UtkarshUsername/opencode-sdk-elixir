defmodule OpenCode.Generated.Control do
  @moduledoc """
  Provides API endpoints related to control
  """

  @default_client OpenCode.Client

  @doc """
  Write log

  Write a log entry to the server logs with specified level and metadata.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec app_log(body :: map, opts :: keyword) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.EffectHttpApiErrorBadRequest.t()
             | OpenCode.Generated.InvalidRequestError.t()}
  def app_log(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Control, :app_log},
      url: "/log",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, :boolean},
        {400,
         {:union,
          [
            {OpenCode.Generated.EffectHttpApiErrorBadRequest, :t},
            {OpenCode.Generated.InvalidRequestError, :t}
          ]}}
      ],
      opts: opts
    })
  end

  @doc """
  Remove auth credentials

  Remove authentication credentials
  """
  @spec auth_remove(providerID :: String.t(), opts :: keyword) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.EffectHttpApiErrorBadRequest.t()
             | OpenCode.Generated.InvalidRequestError.t()}
  def auth_remove(providerID, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [providerID: providerID],
      call: {OpenCode.Generated.Control, :auth_remove},
      url: "/auth/#{providerID}",
      method: :delete,
      response: [
        {200, :boolean},
        {400,
         {:union,
          [
            {OpenCode.Generated.EffectHttpApiErrorBadRequest, :t},
            {OpenCode.Generated.InvalidRequestError, :t}
          ]}}
      ],
      opts: opts
    })
  end

  @doc """
  Set auth credentials

  Set authentication credentials

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec auth_set(
          providerID :: String.t(),
          body ::
            OpenCode.Generated.ApiAuth.t()
            | OpenCode.Generated.OAuth.t()
            | OpenCode.Generated.WellKnownAuth.t(),
          opts :: keyword
        ) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.EffectHttpApiErrorBadRequest.t()
             | OpenCode.Generated.InvalidRequestError.t()}
  def auth_set(providerID, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [providerID: providerID, body: body],
      call: {OpenCode.Generated.Control, :auth_set},
      url: "/auth/#{providerID}",
      body: body,
      method: :put,
      request: [
        {"application/json",
         {:union,
          [
            {OpenCode.Generated.ApiAuth, :t},
            {OpenCode.Generated.OAuth, :t},
            {OpenCode.Generated.WellKnownAuth, :t}
          ]}}
      ],
      response: [
        {200, :boolean},
        {400,
         {:union,
          [
            {OpenCode.Generated.EffectHttpApiErrorBadRequest, :t},
            {OpenCode.Generated.InvalidRequestError, :t}
          ]}}
      ],
      opts: opts
    })
  end
end
