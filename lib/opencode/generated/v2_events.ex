defmodule OpenCode.Generated.V2Events do
  @moduledoc """
  Provides API endpoint related to v2 events
  """

  @default_client OpenCode.Client

  @doc """
  Subscribe to v2 events

  Subscribe to native EventV2 payloads for a location.

  ## Options

    * `location`

  """
  @spec v2_event_subscribe(opts :: keyword) ::
          {:ok, String.t()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_event_subscribe(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.V2Events, :v2_event_subscribe},
      url: "/api/event",
      method: :get,
      query: query,
      response: [
        {200, :string},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end
end
