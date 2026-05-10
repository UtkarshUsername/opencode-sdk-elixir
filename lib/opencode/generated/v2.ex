defmodule OpenCode.Generated.V2 do
  @moduledoc """
  Provides API endpoints related to v2
  """

  @default_client OpenCode.Client

  @doc """
  Compact v2 session

  Compact a v2 session conversation.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec v2_session_compact(sessionID :: String.t(), opts :: keyword) :: :ok | :error
  def v2_session_compact(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.V2, :v2_session_compact},
      url: "/api/session/#{sessionID}/compact",
      method: :post,
      query: query,
      response: [{204, :null}],
      opts: opts
    })
  end

  @doc """
  Get v2 session context

  Retrieve the active context messages for a v2 session (all messages after the last compaction).

  ## Options

    * `directory`
    * `workspace`

  """
  @spec v2_session_context(sessionID :: String.t(), opts :: keyword) ::
          {:ok,
           [
             OpenCode.Generated.SessionMessageAgentSwitched.t()
             | OpenCode.Generated.SessionMessageAssistant.t()
             | OpenCode.Generated.SessionMessageCompaction.t()
             | OpenCode.Generated.SessionMessageModelSwitched.t()
             | OpenCode.Generated.SessionMessageShell.t()
             | OpenCode.Generated.SessionMessageSynthetic.t()
             | OpenCode.Generated.SessionMessageUser.t()
           ]}
          | :error
  def v2_session_context(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.V2, :v2_session_context},
      url: "/api/session/#{sessionID}/context",
      method: :get,
      query: query,
      response: [
        {200,
         [
           union: [
             {OpenCode.Generated.SessionMessageAgentSwitched, :t},
             {OpenCode.Generated.SessionMessageAssistant, :t},
             {OpenCode.Generated.SessionMessageCompaction, :t},
             {OpenCode.Generated.SessionMessageModelSwitched, :t},
             {OpenCode.Generated.SessionMessageShell, :t},
             {OpenCode.Generated.SessionMessageSynthetic, :t},
             {OpenCode.Generated.SessionMessageUser, :t}
           ]
         ]}
      ],
      opts: opts
    })
  end

  @doc """
  List v2 sessions

  Retrieve sessions in the requested order. Items keep that order across pages; use cursor.next or cursor.previous to move through the ordered list.

  ## Options

    * `directory`
    * `workspace`
    * `limit`
    * `order`
    * `path`
    * `roots`
    * `start`
    * `search`
    * `cursor`

  """
  @spec v2_session_list(opts :: keyword) ::
          {:ok, OpenCode.Generated.V2SessionsResponse.t()}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def v2_session_list(opts \\ []) do
    client = opts[:client] || @default_client

    query =
      Keyword.take(opts, [
        :cursor,
        :directory,
        :limit,
        :order,
        :path,
        :roots,
        :search,
        :start,
        :workspace
      ])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.V2, :v2_session_list},
      url: "/api/session",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.V2SessionsResponse, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Send v2 message

  Create a v2 session message and queue it for the agent loop.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec v2_session_prompt(sessionID :: String.t(), body :: map, opts :: keyword) ::
          {:ok,
           OpenCode.Generated.SessionMessageAgentSwitched.t()
           | OpenCode.Generated.SessionMessageAssistant.t()
           | OpenCode.Generated.SessionMessageCompaction.t()
           | OpenCode.Generated.SessionMessageModelSwitched.t()
           | OpenCode.Generated.SessionMessageShell.t()
           | OpenCode.Generated.SessionMessageSynthetic.t()
           | OpenCode.Generated.SessionMessageUser.t()}
          | :error
  def v2_session_prompt(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.V2, :v2_session_prompt},
      url: "/api/session/#{sessionID}/prompt",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200,
         {:union,
          [
            {OpenCode.Generated.SessionMessageAgentSwitched, :t},
            {OpenCode.Generated.SessionMessageAssistant, :t},
            {OpenCode.Generated.SessionMessageCompaction, :t},
            {OpenCode.Generated.SessionMessageModelSwitched, :t},
            {OpenCode.Generated.SessionMessageShell, :t},
            {OpenCode.Generated.SessionMessageSynthetic, :t},
            {OpenCode.Generated.SessionMessageUser, :t}
          ]}}
      ],
      opts: opts
    })
  end

  @doc """
  Wait for v2 session

  Wait for a v2 session agent loop to become idle.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec v2_session_wait(sessionID :: String.t(), opts :: keyword) :: :ok | :error
  def v2_session_wait(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.V2, :v2_session_wait},
      url: "/api/session/#{sessionID}/wait",
      method: :post,
      query: query,
      response: [{204, :null}],
      opts: opts
    })
  end
end
