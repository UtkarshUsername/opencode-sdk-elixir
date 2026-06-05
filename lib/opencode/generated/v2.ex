defmodule OpenCode.Generated.V2 do
  @moduledoc """
  Provides API endpoints related to v2
  """

  @default_client OpenCode.Client

  @doc """
  Compact v2 session

  Compact a v2 session conversation.
  """
  @spec v2_session_compact(sessionID :: String.t(), opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.ServiceUnavailableError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_session_compact(sessionID, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.V2, :v2_session_compact},
      url: "/api/session/#{sessionID}/compact",
      method: :post,
      response: [
        {204, :null},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404, {OpenCode.Generated.SessionNotFoundError, :t}},
        {503, {OpenCode.Generated.ServiceUnavailableError, :t}}
      ],
      opts: opts
    })
  end

  @type v2_session_context_200_json_resp :: %{
          data: [
            OpenCode.Generated.SessionMessageAgentSwitched.t()
            | OpenCode.Generated.SessionMessageAssistant.t()
            | OpenCode.Generated.SessionMessageCompaction.t()
            | OpenCode.Generated.SessionMessageModelSwitched.t()
            | OpenCode.Generated.SessionMessageShell.t()
            | OpenCode.Generated.SessionMessageSynthetic.t()
            | OpenCode.Generated.SessionMessageSystem.t()
            | OpenCode.Generated.SessionMessageUser.t()
          ]
        }

  @doc """
  Get v2 session context

  Retrieve the active context messages for a v2 session (all messages after the last compaction).
  """
  @spec v2_session_context(sessionID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.V2.v2_session_context_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()
             | OpenCode.Generated.UnknownError1.t()}
  def v2_session_context(sessionID, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.V2, :v2_session_context},
      url: "/api/session/#{sessionID}/context",
      method: :get,
      response: [
        {200, {OpenCode.Generated.V2, :v2_session_context_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404, {OpenCode.Generated.SessionNotFoundError, :t}},
        {500, {OpenCode.Generated.UnknownError1, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  List v2 sessions

  Retrieve sessions in the requested order. Items keep that order across pages; use cursor.next or cursor.previous to move through the ordered list.

  ## Options

    * `workspace`
    * `limit`
    * `order`
    * `search`
    * `directory`
    * `project`
    * `subpath`
    * `cursor`

  """
  @spec v2_session_list(opts :: keyword) ::
          {:ok, OpenCode.Generated.V2SessionsResponse.t()}
          | {:error,
             OpenCode.Generated.InvalidCursorError.t()
             | OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_session_list(opts \\ []) do
    client = opts[:client] || @default_client

    query =
      Keyword.take(opts, [
        :cursor,
        :directory,
        :limit,
        :order,
        :project,
        :search,
        :subpath,
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
        {400,
         {:union,
          [
            {OpenCode.Generated.InvalidCursorError, :t},
            {OpenCode.Generated.InvalidRequestError, :t}
          ]}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @type v2_session_prompt_200_json_resp :: %{data: OpenCode.Generated.SessionInputAdmitted.t()}

  @doc """
  Send v2 message

  Durably admit one v2 session input and schedule agent-loop execution unless resume is false.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec v2_session_prompt(sessionID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.V2.v2_session_prompt_200_json_resp()}
          | {:error,
             OpenCode.Generated.ConflictError.t()
             | OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_session_prompt(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.V2, :v2_session_prompt},
      url: "/api/session/#{sessionID}/prompt",
      body: body,
      method: :post,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.V2, :v2_session_prompt_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404, {OpenCode.Generated.SessionNotFoundError, :t}},
        {409, {OpenCode.Generated.ConflictError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Wait for v2 session

  Wait for a v2 session agent loop to become idle.
  """
  @spec v2_session_wait(sessionID :: String.t(), opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.ServiceUnavailableError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_session_wait(sessionID, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.V2, :v2_session_wait},
      url: "/api/session/#{sessionID}/wait",
      method: :post,
      response: [
        {204, :null},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404, {OpenCode.Generated.SessionNotFoundError, :t}},
        {503, {OpenCode.Generated.ServiceUnavailableError, :t}}
      ],
      opts: opts
    })
  end

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(:v2_session_context_200_json_resp) do
    [
      data: [
        union: [
          {OpenCode.Generated.SessionMessageAgentSwitched, :t},
          {OpenCode.Generated.SessionMessageAssistant, :t},
          {OpenCode.Generated.SessionMessageCompaction, :t},
          {OpenCode.Generated.SessionMessageModelSwitched, :t},
          {OpenCode.Generated.SessionMessageShell, :t},
          {OpenCode.Generated.SessionMessageSynthetic, :t},
          {OpenCode.Generated.SessionMessageSystem, :t},
          {OpenCode.Generated.SessionMessageUser, :t}
        ]
      ]
    ]
  end

  def __fields__(:v2_session_prompt_200_json_resp) do
    [data: {OpenCode.Generated.SessionInputAdmitted, :t}]
  end
end
