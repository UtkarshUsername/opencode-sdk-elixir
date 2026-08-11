defmodule OpenCode.Generated.Sessions do
  @moduledoc """
  Provides API endpoints related to sessions
  """

  @default_client OpenCode.Client

  @type v2_session_active_200_json_resp :: %{data: map}

  @doc """
  List active sessions

  Retrieve foreground Session drains currently owned by this OpenCode process. Sessions absent from the result are inactive.
  """
  @spec v2_session_active(opts :: keyword) ::
          {:ok, OpenCode.Generated.Sessions.v2_session_active_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_session_active(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Sessions, :v2_session_active},
      url: "/api/session/active",
      method: :get,
      response: [
        {200, {OpenCode.Generated.Sessions, :v2_session_active_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Compact session

  Compact a session conversation.
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
      call: {OpenCode.Generated.Sessions, :v2_session_compact},
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
  Get session context

  Retrieve the active context messages for a session (all messages after the last compaction).
  """
  @spec v2_session_context(sessionID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Sessions.v2_session_context_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()
             | OpenCode.Generated.UnknownError1.t()}
  def v2_session_context(sessionID, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Sessions, :v2_session_context},
      url: "/api/session/#{sessionID}/context",
      method: :get,
      response: [
        {200, {OpenCode.Generated.Sessions, :v2_session_context_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404, {OpenCode.Generated.SessionNotFoundError, :t}},
        {500, {OpenCode.Generated.UnknownError1, :t}}
      ],
      opts: opts
    })
  end

  @type v2_session_create_200_json_resp :: %{data: OpenCode.Generated.SessionV2Info.t()}

  @doc """
  Create session

  Create a session at the requested location.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec v2_session_create(body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Sessions.v2_session_create_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_session_create(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Sessions, :v2_session_create},
      url: "/api/session",
      body: body,
      method: :post,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Sessions, :v2_session_create_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @type v2_session_events_200__resp :: %{data: String.t(), event: String.t(), id: String.t()}

  @doc """
  Subscribe to session events

  Replay durable events after an aggregate sequence, then continue with new durable events.

  ## Options

    * `after`

  """
  @spec v2_session_events(sessionID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Sessions.v2_session_events_200__resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_session_events(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:after])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Sessions, :v2_session_events},
      url: "/api/session/#{sessionID}/event",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Sessions, :v2_session_events_200__resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404, {OpenCode.Generated.SessionNotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @type v2_session_get_200_json_resp :: %{data: OpenCode.Generated.SessionV2Info.t()}

  @doc """
  Get session

  Retrieve a session by ID.
  """
  @spec v2_session_get(sessionID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Sessions.v2_session_get_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_session_get(sessionID, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Sessions, :v2_session_get},
      url: "/api/session/#{sessionID}",
      method: :get,
      response: [
        {200, {OpenCode.Generated.Sessions, :v2_session_get_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404, {OpenCode.Generated.SessionNotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get session history

  Read one finite page of public durable Session events after an exclusive aggregate sequence. Newly committed events may appear on later pages.

  ## Options

    * `limit`
    * `after`

  """
  @spec v2_session_history(sessionID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.SessionHistory.t()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_session_history(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:after, :limit])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Sessions, :v2_session_history},
      url: "/api/session/#{sessionID}/history",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.SessionHistory, :t}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404, {OpenCode.Generated.SessionNotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Interrupt session execution

  Interrupt active execution owned by this OpenCode process. Idle interruption is a no-op.
  """
  @spec v2_session_interrupt(sessionID :: String.t(), opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_session_interrupt(sessionID, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Sessions, :v2_session_interrupt},
      url: "/api/session/#{sessionID}/interrupt",
      method: :post,
      response: [
        {204, :null},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404, {OpenCode.Generated.SessionNotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  List sessions

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
          {:ok, OpenCode.Generated.SessionsResponse.t()}
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
      call: {OpenCode.Generated.Sessions, :v2_session_list},
      url: "/api/session",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.SessionsResponse, :t}},
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

  @type v2_session_message_200_json_resp :: %{
          data:
            OpenCode.Generated.SessionMessageAgentSwitched.t()
            | OpenCode.Generated.SessionMessageAssistant.t()
            | OpenCode.Generated.SessionMessageCompaction.t()
            | OpenCode.Generated.SessionMessageModelSwitched.t()
            | OpenCode.Generated.SessionMessageShell.t()
            | OpenCode.Generated.SessionMessageSynthetic.t()
            | OpenCode.Generated.SessionMessageSystem.t()
            | OpenCode.Generated.SessionMessageUser.t()
        }

  @doc """
  Get session message

  Retrieve one projected message owned by the Session.
  """
  @spec v2_session_message(sessionID :: String.t(), messageID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Sessions.v2_session_message_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.MessageNotFoundError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_session_message(sessionID, messageID, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sessionID: sessionID, messageID: messageID],
      call: {OpenCode.Generated.Sessions, :v2_session_message},
      url: "/api/session/#{sessionID}/message/#{messageID}",
      method: :get,
      response: [
        {200, {OpenCode.Generated.Sessions, :v2_session_message_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404,
         {:union,
          [
            {OpenCode.Generated.MessageNotFoundError, :t},
            {OpenCode.Generated.SessionNotFoundError, :t}
          ]}}
      ],
      opts: opts
    })
  end

  @type v2_session_prompt_200_json_resp :: %{data: OpenCode.Generated.SessionInputAdmitted.t()}

  @doc """
  Send message

  Durably admit one session input and schedule agent-loop execution unless resume is false.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec v2_session_prompt(sessionID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Sessions.v2_session_prompt_200_json_resp()}
          | {:error,
             OpenCode.Generated.ConflictError.t()
             | OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_session_prompt(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Sessions, :v2_session_prompt},
      url: "/api/session/#{sessionID}/prompt",
      body: body,
      method: :post,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Sessions, :v2_session_prompt_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404, {OpenCode.Generated.SessionNotFoundError, :t}},
        {409, {OpenCode.Generated.ConflictError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Clear staged revert
  """
  @spec v2_session_revert_clear(sessionID :: String.t(), opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()
             | OpenCode.Generated.UnknownError1.t()}
  def v2_session_revert_clear(sessionID, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Sessions, :v2_session_revert_clear},
      url: "/api/session/#{sessionID}/revert/clear",
      method: :post,
      response: [
        {204, :null},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404, {OpenCode.Generated.SessionNotFoundError, :t}},
        {500, {OpenCode.Generated.UnknownError1, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Commit staged revert
  """
  @spec v2_session_revert_commit(sessionID :: String.t(), opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_session_revert_commit(sessionID, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Sessions, :v2_session_revert_commit},
      url: "/api/session/#{sessionID}/revert/commit",
      method: :post,
      response: [
        {204, :null},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404, {OpenCode.Generated.SessionNotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @type v2_session_revert_stage_200_json_resp :: %{data: OpenCode.Generated.RevertState.t()}

  @doc """
  Stage session revert

  Stage or move a reversible session boundary and optionally apply its file changes.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec v2_session_revert_stage(sessionID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Sessions.v2_session_revert_stage_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.MessageNotFoundError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()
             | OpenCode.Generated.UnknownError1.t()}
  def v2_session_revert_stage(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Sessions, :v2_session_revert_stage},
      url: "/api/session/#{sessionID}/revert/stage",
      body: body,
      method: :post,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Sessions, :v2_session_revert_stage_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404,
         {:union,
          [
            {OpenCode.Generated.MessageNotFoundError, :t},
            {OpenCode.Generated.SessionNotFoundError, :t}
          ]}},
        {500, {OpenCode.Generated.UnknownError1, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Switch session agent

  Switch the agent used by subsequent provider turns.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec v2_session_switch_agent(sessionID :: String.t(), body :: map, opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_session_switch_agent(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Sessions, :v2_session_switch_agent},
      url: "/api/session/#{sessionID}/agent",
      body: body,
      method: :post,
      request: [{"application/json", :map}],
      response: [
        {204, :null},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404, {OpenCode.Generated.SessionNotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Switch session model

  Switch the model used by subsequent provider turns.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec v2_session_switch_model(sessionID :: String.t(), body :: map, opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_session_switch_model(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Sessions, :v2_session_switch_model},
      url: "/api/session/#{sessionID}/model",
      body: body,
      method: :post,
      request: [{"application/json", :map}],
      response: [
        {204, :null},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404, {OpenCode.Generated.SessionNotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Wait for session

  Wait for a session agent loop to become idle.
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
      call: {OpenCode.Generated.Sessions, :v2_session_wait},
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
  def __fields__(:v2_session_active_200_json_resp) do
    [data: :map]
  end

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

  def __fields__(:v2_session_create_200_json_resp) do
    [data: {OpenCode.Generated.SessionV2Info, :t}]
  end

  def __fields__(:v2_session_events_200__resp) do
    [data: :string, event: :string, id: :string]
  end

  def __fields__(:v2_session_get_200_json_resp) do
    [data: {OpenCode.Generated.SessionV2Info, :t}]
  end

  def __fields__(:v2_session_message_200_json_resp) do
    [
      data:
        {:union,
         [
           {OpenCode.Generated.SessionMessageAgentSwitched, :t},
           {OpenCode.Generated.SessionMessageAssistant, :t},
           {OpenCode.Generated.SessionMessageCompaction, :t},
           {OpenCode.Generated.SessionMessageModelSwitched, :t},
           {OpenCode.Generated.SessionMessageShell, :t},
           {OpenCode.Generated.SessionMessageSynthetic, :t},
           {OpenCode.Generated.SessionMessageSystem, :t},
           {OpenCode.Generated.SessionMessageUser, :t}
         ]}
    ]
  end

  def __fields__(:v2_session_prompt_200_json_resp) do
    [data: {OpenCode.Generated.SessionInputAdmitted, :t}]
  end

  def __fields__(:v2_session_revert_stage_200_json_resp) do
    [data: {OpenCode.Generated.RevertState, :t}]
  end
end
