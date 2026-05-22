defmodule OpenCode.Generated.V2Messages do
  @moduledoc """
  Provides API endpoint related to v2 messages
  """

  @default_client OpenCode.Client

  @doc """
  Get v2 session messages

  Retrieve projected v2 messages for a session. Items keep the requested order across pages; use cursor.next or cursor.previous to move through the ordered timeline.

  ## Options

    * `directory`
    * `workspace`
    * `limit`
    * `order`
    * `cursor`

  """
  @spec v2_session_messages(sessionID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.V2SessionMessagesResponse.t()}
          | {:error,
             OpenCode.Generated.InvalidCursorError.t()
             | OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()
             | OpenCode.Generated.UnknownError1.t()}
  def v2_session_messages(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:cursor, :directory, :limit, :order, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.V2Messages, :v2_session_messages},
      url: "/api/session/#{sessionID}/message",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.V2SessionMessagesResponse, :t}},
        {400,
         {:union,
          [
            {OpenCode.Generated.InvalidCursorError, :t},
            {OpenCode.Generated.InvalidRequestError, :t}
          ]}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404, {OpenCode.Generated.SessionNotFoundError, :t}},
        {500, {OpenCode.Generated.UnknownError1, :t}}
      ],
      opts: opts
    })
  end
end
