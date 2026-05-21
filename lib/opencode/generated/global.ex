defmodule OpenCode.Generated.Global do
  @moduledoc """
  Provides API endpoints related to global
  """

  @default_client OpenCode.Client

  @doc """
  Get global configuration

  Retrieve the current global OpenCode configuration settings and preferences.
  """
  @spec global_config_get(opts :: keyword) ::
          {:ok, OpenCode.Generated.Config.t()} | {:error, OpenCode.Generated.BadRequestError.t()}
  def global_config_get(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Global, :global_config_get},
      url: "/global/config",
      method: :get,
      response: [
        {200, {OpenCode.Generated.Config, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update global configuration

  Update global OpenCode configuration settings and preferences.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec global_config_update(body :: OpenCode.Generated.Config.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Config.t()}
          | {:error,
             OpenCode.Generated.EffectHttpApiErrorBadRequest.t()
             | OpenCode.Generated.InvalidRequestError.t()}
  def global_config_update(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Global, :global_config_update},
      url: "/global/config",
      body: body,
      method: :patch,
      request: [{"application/json", {OpenCode.Generated.Config, :t}}],
      response: [
        {200, {OpenCode.Generated.Config, :t}},
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
  Dispose instance

  Clean up and dispose all OpenCode instances, releasing all resources.
  """
  @spec global_dispose(opts :: keyword) ::
          {:ok, boolean} | {:error, OpenCode.Generated.BadRequestError.t()}
  def global_dispose(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Global, :global_dispose},
      url: "/global/dispose",
      method: :post,
      response: [{200, :boolean}, {400, {OpenCode.Generated.BadRequestError, :t}}],
      opts: opts
    })
  end

  @doc """
  Get global events

  Subscribe to global events from the OpenCode system using server-sent events.
  """
  @spec global_event(opts :: keyword) ::
          {:ok, OpenCode.Generated.GlobalEvent.t()}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def global_event(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Global, :global_event},
      url: "/global/event",
      method: :get,
      response: [
        {200, {OpenCode.Generated.GlobalEvent, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @type global_health_200_json_resp :: %{healthy: true, version: String.t()}

  @doc """
  Get health

  Get health information about the OpenCode server.
  """
  @spec global_health(opts :: keyword) ::
          {:ok, OpenCode.Generated.Global.global_health_200_json_resp()}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def global_health(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Global, :global_health},
      url: "/global/health",
      method: :get,
      response: [
        {200, {OpenCode.Generated.Global, :global_health_200_json_resp}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @type global_upgrade_200_json_resp :: %{
          error: String.t(),
          success: false | true,
          version: String.t()
        }

  @doc """
  Upgrade opencode

  Upgrade opencode to the specified version or latest if not specified.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec global_upgrade(body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Global.global_upgrade_200_json_resp()}
          | {:error,
             OpenCode.Generated.EffectHttpApiErrorBadRequest.t()
             | OpenCode.Generated.InvalidRequestError.t()}
  def global_upgrade(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Global, :global_upgrade},
      url: "/global/upgrade",
      body: body,
      method: :post,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Global, :global_upgrade_200_json_resp}},
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

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(:global_health_200_json_resp) do
    [healthy: {:const, true}, version: :string]
  end

  def __fields__(:global_upgrade_200_json_resp) do
    [error: :string, success: {:enum, [false, true]}, version: :string]
  end
end
