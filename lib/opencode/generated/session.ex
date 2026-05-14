defmodule OpenCode.Generated.Session do
  @moduledoc """
  Provides API endpoints related to session
  """

  @default_client OpenCode.Client

  @doc """
  delete `/session/{sessionID}/message/{messageID}/part/{partID}`

  Delete a part from a message.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec part_delete(
          sessionID :: String.t(),
          messageID :: String.t(),
          partID :: String.t(),
          opts :: keyword
        ) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def part_delete(sessionID, messageID, partID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, messageID: messageID, partID: partID],
      call: {OpenCode.Generated.Session, :part_delete},
      url: "/session/#{sessionID}/message/#{messageID}/part/#{partID}",
      method: :delete,
      query: query,
      response: [
        {200, :boolean},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  patch `/session/{sessionID}/message/{messageID}/part/{partID}`

  Update a part in a message.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec part_update(
          sessionID :: String.t(),
          messageID :: String.t(),
          partID :: String.t(),
          body ::
            OpenCode.Generated.AgentPart.t()
            | OpenCode.Generated.CompactionPart.t()
            | OpenCode.Generated.FilePart.t()
            | OpenCode.Generated.PatchPart.t()
            | OpenCode.Generated.ReasoningPart.t()
            | OpenCode.Generated.RetryPart.t()
            | OpenCode.Generated.SnapshotPart.t()
            | OpenCode.Generated.StepFinishPart.t()
            | OpenCode.Generated.StepStartPart.t()
            | OpenCode.Generated.SubtaskPart.t()
            | OpenCode.Generated.TextPart.t()
            | OpenCode.Generated.ToolPart.t(),
          opts :: keyword
        ) ::
          {:ok,
           OpenCode.Generated.AgentPart.t()
           | OpenCode.Generated.CompactionPart.t()
           | OpenCode.Generated.FilePart.t()
           | OpenCode.Generated.PatchPart.t()
           | OpenCode.Generated.ReasoningPart.t()
           | OpenCode.Generated.RetryPart.t()
           | OpenCode.Generated.SnapshotPart.t()
           | OpenCode.Generated.StepFinishPart.t()
           | OpenCode.Generated.StepStartPart.t()
           | OpenCode.Generated.SubtaskPart.t()
           | OpenCode.Generated.TextPart.t()
           | OpenCode.Generated.ToolPart.t()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def part_update(sessionID, messageID, partID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, messageID: messageID, partID: partID, body: body],
      call: {OpenCode.Generated.Session, :part_update},
      url: "/session/#{sessionID}/message/#{messageID}/part/#{partID}",
      body: body,
      method: :patch,
      query: query,
      request: [
        {"application/json",
         {:union,
          [
            {OpenCode.Generated.AgentPart, :t},
            {OpenCode.Generated.CompactionPart, :t},
            {OpenCode.Generated.FilePart, :t},
            {OpenCode.Generated.PatchPart, :t},
            {OpenCode.Generated.ReasoningPart, :t},
            {OpenCode.Generated.RetryPart, :t},
            {OpenCode.Generated.SnapshotPart, :t},
            {OpenCode.Generated.StepFinishPart, :t},
            {OpenCode.Generated.StepStartPart, :t},
            {OpenCode.Generated.SubtaskPart, :t},
            {OpenCode.Generated.TextPart, :t},
            {OpenCode.Generated.ToolPart, :t}
          ]}}
      ],
      response: [
        {200,
         {:union,
          [
            {OpenCode.Generated.AgentPart, :t},
            {OpenCode.Generated.CompactionPart, :t},
            {OpenCode.Generated.FilePart, :t},
            {OpenCode.Generated.PatchPart, :t},
            {OpenCode.Generated.ReasoningPart, :t},
            {OpenCode.Generated.RetryPart, :t},
            {OpenCode.Generated.SnapshotPart, :t},
            {OpenCode.Generated.StepFinishPart, :t},
            {OpenCode.Generated.StepStartPart, :t},
            {OpenCode.Generated.SubtaskPart, :t},
            {OpenCode.Generated.TextPart, :t},
            {OpenCode.Generated.ToolPart, :t}
          ]}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Respond to permission

  Approve or deny a permission request from the AI assistant.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec permission_respond(
          sessionID :: String.t(),
          permissionID :: String.t(),
          body :: map,
          opts :: keyword
        ) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def permission_respond(sessionID, permissionID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, permissionID: permissionID, body: body],
      call: {OpenCode.Generated.Session, :permission_respond},
      url: "/session/#{sessionID}/permissions/#{permissionID}",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, :boolean},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Abort session

  Abort an active session and stop any ongoing AI processing or command execution.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec session_abort(sessionID :: String.t(), opts :: keyword) ::
          {:ok, boolean} | {:error, OpenCode.Generated.BadRequestError.t()}
  def session_abort(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Session, :session_abort},
      url: "/session/#{sessionID}/abort",
      method: :post,
      query: query,
      response: [{200, :boolean}, {400, {OpenCode.Generated.BadRequestError, :t}}],
      opts: opts
    })
  end

  @doc """
  Get session children

  Retrieve all child sessions that were forked from the specified parent session.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec session_children(sessionID :: String.t(), opts :: keyword) ::
          {:ok, [OpenCode.Generated.Session.t()]}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_children(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Session, :session_children},
      url: "/session/#{sessionID}/children",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.Session, :t}]},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @type session_command_200_json_resp :: %{
          info: OpenCode.Generated.AssistantMessage.t(),
          parts: [
            OpenCode.Generated.AgentPart.t()
            | OpenCode.Generated.CompactionPart.t()
            | OpenCode.Generated.FilePart.t()
            | OpenCode.Generated.PatchPart.t()
            | OpenCode.Generated.ReasoningPart.t()
            | OpenCode.Generated.RetryPart.t()
            | OpenCode.Generated.SnapshotPart.t()
            | OpenCode.Generated.StepFinishPart.t()
            | OpenCode.Generated.StepStartPart.t()
            | OpenCode.Generated.SubtaskPart.t()
            | OpenCode.Generated.TextPart.t()
            | OpenCode.Generated.ToolPart.t()
          ]
        }

  @doc """
  Send command

  Send a new command to a session for execution by the AI assistant.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec session_command(sessionID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Session.session_command_200_json_resp()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_command(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Session, :session_command},
      url: "/session/#{sessionID}/command",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Session, :session_command_200_json_resp}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create session

  Create a new OpenCode session for interacting with AI assistants and managing conversations.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec session_create(body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Session.t()} | {:error, OpenCode.Generated.BadRequestError.t()}
  def session_create(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Session, :session_create},
      url: "/session",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Session, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Delete session

  Delete a session and permanently remove all associated data, including messages and history.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec session_delete(sessionID :: String.t(), opts :: keyword) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_delete(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Session, :session_delete},
      url: "/session/#{sessionID}",
      method: :delete,
      query: query,
      response: [
        {200, :boolean},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Delete message

  Permanently delete a specific message and all of its parts from a session without reverting file changes.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec session_delete_message(sessionID :: String.t(), messageID :: String.t(), opts :: keyword) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_delete_message(sessionID, messageID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, messageID: messageID],
      call: {OpenCode.Generated.Session, :session_delete_message},
      url: "/session/#{sessionID}/message/#{messageID}",
      method: :delete,
      query: query,
      response: [
        {200, :boolean},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get message diff

  Get the file changes (diff) that resulted from a specific user message in the session.

  ## Options

    * `directory`
    * `workspace`
    * `messageID`

  """
  @spec session_diff(sessionID :: String.t(), opts :: keyword) ::
          {:ok, [OpenCode.Generated.SnapshotFileDiff.t()]} | :error
  def session_diff(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :messageID, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Session, :session_diff},
      url: "/session/#{sessionID}/diff",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.SnapshotFileDiff, :t}]}],
      opts: opts
    })
  end

  @doc """
  Fork session

  Create a new session by forking an existing session at a specific message point.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec session_fork(sessionID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Session.t()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_fork(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Session, :session_fork},
      url: "/session/#{sessionID}/fork",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Session, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get session

  Retrieve detailed information about a specific OpenCode session.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec session_get(sessionID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Session.t()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_get(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Session, :session_get},
      url: "/session/#{sessionID}",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Session, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Initialize session

  Analyze the current application and create an AGENTS.md file with project-specific agent configurations.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec session_init(sessionID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_init(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Session, :session_init},
      url: "/session/#{sessionID}/init",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, :boolean},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  List sessions

  Get a list of all OpenCode sessions, sorted by most recently updated.

  ## Options

    * `directory`
    * `workspace`
    * `scope`
    * `path`
    * `roots`
    * `start`
    * `search`
    * `limit`

  """
  @spec session_list(opts :: keyword) :: {:ok, [OpenCode.Generated.Session.t()]} | :error
  def session_list(opts \\ []) do
    client = opts[:client] || @default_client

    query =
      Keyword.take(opts, [:directory, :limit, :path, :roots, :scope, :search, :start, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Session, :session_list},
      url: "/session",
      method: :get,
      query: query,
      response: [{200, [{OpenCode.Generated.Session, :t}]}],
      opts: opts
    })
  end

  @type session_message_200_json_resp :: %{
          info: OpenCode.Generated.AssistantMessage.t() | OpenCode.Generated.UserMessage.t(),
          parts: [
            OpenCode.Generated.AgentPart.t()
            | OpenCode.Generated.CompactionPart.t()
            | OpenCode.Generated.FilePart.t()
            | OpenCode.Generated.PatchPart.t()
            | OpenCode.Generated.ReasoningPart.t()
            | OpenCode.Generated.RetryPart.t()
            | OpenCode.Generated.SnapshotPart.t()
            | OpenCode.Generated.StepFinishPart.t()
            | OpenCode.Generated.StepStartPart.t()
            | OpenCode.Generated.SubtaskPart.t()
            | OpenCode.Generated.TextPart.t()
            | OpenCode.Generated.ToolPart.t()
          ]
        }

  @doc """
  Get message

  Retrieve a specific message from a session by its message ID.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec session_message(sessionID :: String.t(), messageID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Session.session_message_200_json_resp()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_message(sessionID, messageID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, messageID: messageID],
      call: {OpenCode.Generated.Session, :session_message},
      url: "/session/#{sessionID}/message/#{messageID}",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Session, :session_message_200_json_resp}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @type session_messages_200_json_resp :: %{
          info: OpenCode.Generated.AssistantMessage.t() | OpenCode.Generated.UserMessage.t(),
          parts: [
            OpenCode.Generated.AgentPart.t()
            | OpenCode.Generated.CompactionPart.t()
            | OpenCode.Generated.FilePart.t()
            | OpenCode.Generated.PatchPart.t()
            | OpenCode.Generated.ReasoningPart.t()
            | OpenCode.Generated.RetryPart.t()
            | OpenCode.Generated.SnapshotPart.t()
            | OpenCode.Generated.StepFinishPart.t()
            | OpenCode.Generated.StepStartPart.t()
            | OpenCode.Generated.SubtaskPart.t()
            | OpenCode.Generated.TextPart.t()
            | OpenCode.Generated.ToolPart.t()
          ]
        }

  @doc """
  Get session messages

  Retrieve all messages in a session, including user prompts and AI responses.

  ## Options

    * `directory`
    * `workspace`
    * `limit`
    * `before`

  """
  @spec session_messages(sessionID :: String.t(), opts :: keyword) ::
          {:ok, [OpenCode.Generated.Session.session_messages_200_json_resp()]}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_messages(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:before, :directory, :limit, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Session, :session_messages},
      url: "/session/#{sessionID}/message",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.Session, :session_messages_200_json_resp}]},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @type session_prompt_200_json_resp :: %{
          info: OpenCode.Generated.AssistantMessage.t(),
          parts: [
            OpenCode.Generated.AgentPart.t()
            | OpenCode.Generated.CompactionPart.t()
            | OpenCode.Generated.FilePart.t()
            | OpenCode.Generated.PatchPart.t()
            | OpenCode.Generated.ReasoningPart.t()
            | OpenCode.Generated.RetryPart.t()
            | OpenCode.Generated.SnapshotPart.t()
            | OpenCode.Generated.StepFinishPart.t()
            | OpenCode.Generated.StepStartPart.t()
            | OpenCode.Generated.SubtaskPart.t()
            | OpenCode.Generated.TextPart.t()
            | OpenCode.Generated.ToolPart.t()
          ]
        }

  @doc """
  Send message

  Create and send a new message to a session, streaming the AI response.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec session_prompt(sessionID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Session.session_prompt_200_json_resp()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_prompt(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Session, :session_prompt},
      url: "/session/#{sessionID}/message",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Session, :session_prompt_200_json_resp}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Send async message

  Create and send a new message to a session asynchronously, starting the session if needed and returning immediately.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec session_prompt_async(sessionID :: String.t(), body :: map, opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_prompt_async(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Session, :session_prompt_async},
      url: "/session/#{sessionID}/prompt_async",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {204, :null},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Revert message

  Revert a specific message in a session, undoing its effects and restoring the previous state.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec session_revert(sessionID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Session.t()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_revert(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Session, :session_revert},
      url: "/session/#{sessionID}/revert",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Session, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Share session

  Create a shareable link for a session, allowing others to view the conversation.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec session_share(sessionID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Session.t()}
          | {:error,
             OpenCode.Generated.EffectHttpApiErrorInternalServerError.t()
             | OpenCode.Generated.NotFoundError.t()}
  def session_share(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Session, :session_share},
      url: "/session/#{sessionID}/share",
      method: :post,
      query: query,
      response: [
        {200, {OpenCode.Generated.Session, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}},
        {500, {OpenCode.Generated.EffectHttpApiErrorInternalServerError, :t}}
      ],
      opts: opts
    })
  end

  @type session_shell_200_json_resp :: %{
          info: OpenCode.Generated.AssistantMessage.t() | OpenCode.Generated.UserMessage.t(),
          parts: [
            OpenCode.Generated.AgentPart.t()
            | OpenCode.Generated.CompactionPart.t()
            | OpenCode.Generated.FilePart.t()
            | OpenCode.Generated.PatchPart.t()
            | OpenCode.Generated.ReasoningPart.t()
            | OpenCode.Generated.RetryPart.t()
            | OpenCode.Generated.SnapshotPart.t()
            | OpenCode.Generated.StepFinishPart.t()
            | OpenCode.Generated.StepStartPart.t()
            | OpenCode.Generated.SubtaskPart.t()
            | OpenCode.Generated.TextPart.t()
            | OpenCode.Generated.ToolPart.t()
          ]
        }

  @doc """
  Run shell command

  Execute a shell command within the session context and return the AI's response.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec session_shell(sessionID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Session.session_shell_200_json_resp()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_shell(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Session, :session_shell},
      url: "/session/#{sessionID}/shell",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Session, :session_shell_200_json_resp}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get session status

  Retrieve the current status of all sessions, including active, idle, and completed states.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec session_status(opts :: keyword) ::
          {:ok, map} | {:error, OpenCode.Generated.BadRequestError.t()}
  def session_status(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Session, :session_status},
      url: "/session/status",
      method: :get,
      query: query,
      response: [{200, :map}, {400, {OpenCode.Generated.BadRequestError, :t}}],
      opts: opts
    })
  end

  @doc """
  Summarize session

  Generate a concise summary of the session using AI compaction to preserve key information.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec session_summarize(sessionID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_summarize(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Session, :session_summarize},
      url: "/session/#{sessionID}/summarize",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, :boolean},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get session todos

  Retrieve the todo list associated with a specific session, showing tasks and action items.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec session_todo(sessionID :: String.t(), opts :: keyword) ::
          {:ok, [OpenCode.Generated.Todo.t()]}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_todo(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Session, :session_todo},
      url: "/session/#{sessionID}/todo",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.Todo, :t}]},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Restore reverted messages

  Restore all previously reverted messages in a session.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec session_unrevert(sessionID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Session.t()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_unrevert(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Session, :session_unrevert},
      url: "/session/#{sessionID}/unrevert",
      method: :post,
      query: query,
      response: [
        {200, {OpenCode.Generated.Session, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Unshare session

  Remove the shareable link for a session, making it private again.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec session_unshare(sessionID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Session.t()}
          | {:error,
             OpenCode.Generated.EffectHttpApiErrorInternalServerError.t()
             | OpenCode.Generated.NotFoundError.t()}
  def session_unshare(sessionID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.Session, :session_unshare},
      url: "/session/#{sessionID}/share",
      method: :delete,
      query: query,
      response: [
        {200, {OpenCode.Generated.Session, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}},
        {500, {OpenCode.Generated.EffectHttpApiErrorInternalServerError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update session

  Update properties of an existing session, such as title or other metadata.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec session_update(sessionID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Session.t()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def session_update(sessionID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [sessionID: sessionID, body: body],
      call: {OpenCode.Generated.Session, :session_update},
      url: "/session/#{sessionID}",
      body: body,
      method: :patch,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Session, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @type t :: %__MODULE__{
          agent: String.t() | nil,
          cost: number | nil,
          directory: String.t(),
          id: String.t(),
          model: OpenCode.Generated.SessionModel.t() | nil,
          parent_id: String.t() | nil,
          path: String.t() | nil,
          permission: [OpenCode.Generated.PermissionRule.t()] | nil,
          project_id: String.t(),
          revert: OpenCode.Generated.SessionRevert.t() | nil,
          share: OpenCode.Generated.SessionShare.t() | nil,
          slug: String.t(),
          summary: OpenCode.Generated.SessionSummary.t() | nil,
          time: OpenCode.Generated.SessionTime.t(),
          title: String.t(),
          tokens: OpenCode.Generated.SessionTokens.t() | nil,
          version: String.t(),
          workspace_id: String.t() | nil
        }

  defstruct [
    :agent,
    :cost,
    :directory,
    :id,
    :model,
    :parent_id,
    :path,
    :permission,
    :project_id,
    :revert,
    :share,
    :slug,
    :summary,
    :time,
    :title,
    :tokens,
    :version,
    :workspace_id
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:session_command_200_json_resp) do
    [
      info: {OpenCode.Generated.AssistantMessage, :t},
      parts: [
        union: [
          {OpenCode.Generated.AgentPart, :t},
          {OpenCode.Generated.CompactionPart, :t},
          {OpenCode.Generated.FilePart, :t},
          {OpenCode.Generated.PatchPart, :t},
          {OpenCode.Generated.ReasoningPart, :t},
          {OpenCode.Generated.RetryPart, :t},
          {OpenCode.Generated.SnapshotPart, :t},
          {OpenCode.Generated.StepFinishPart, :t},
          {OpenCode.Generated.StepStartPart, :t},
          {OpenCode.Generated.SubtaskPart, :t},
          {OpenCode.Generated.TextPart, :t},
          {OpenCode.Generated.ToolPart, :t}
        ]
      ]
    ]
  end

  def __fields__(:session_message_200_json_resp) do
    [
      info:
        {:union,
         [{OpenCode.Generated.AssistantMessage, :t}, {OpenCode.Generated.UserMessage, :t}]},
      parts: [
        union: [
          {OpenCode.Generated.AgentPart, :t},
          {OpenCode.Generated.CompactionPart, :t},
          {OpenCode.Generated.FilePart, :t},
          {OpenCode.Generated.PatchPart, :t},
          {OpenCode.Generated.ReasoningPart, :t},
          {OpenCode.Generated.RetryPart, :t},
          {OpenCode.Generated.SnapshotPart, :t},
          {OpenCode.Generated.StepFinishPart, :t},
          {OpenCode.Generated.StepStartPart, :t},
          {OpenCode.Generated.SubtaskPart, :t},
          {OpenCode.Generated.TextPart, :t},
          {OpenCode.Generated.ToolPart, :t}
        ]
      ]
    ]
  end

  def __fields__(:session_messages_200_json_resp) do
    [
      info:
        {:union,
         [{OpenCode.Generated.AssistantMessage, :t}, {OpenCode.Generated.UserMessage, :t}]},
      parts: [
        union: [
          {OpenCode.Generated.AgentPart, :t},
          {OpenCode.Generated.CompactionPart, :t},
          {OpenCode.Generated.FilePart, :t},
          {OpenCode.Generated.PatchPart, :t},
          {OpenCode.Generated.ReasoningPart, :t},
          {OpenCode.Generated.RetryPart, :t},
          {OpenCode.Generated.SnapshotPart, :t},
          {OpenCode.Generated.StepFinishPart, :t},
          {OpenCode.Generated.StepStartPart, :t},
          {OpenCode.Generated.SubtaskPart, :t},
          {OpenCode.Generated.TextPart, :t},
          {OpenCode.Generated.ToolPart, :t}
        ]
      ]
    ]
  end

  def __fields__(:session_prompt_200_json_resp) do
    [
      info: {OpenCode.Generated.AssistantMessage, :t},
      parts: [
        union: [
          {OpenCode.Generated.AgentPart, :t},
          {OpenCode.Generated.CompactionPart, :t},
          {OpenCode.Generated.FilePart, :t},
          {OpenCode.Generated.PatchPart, :t},
          {OpenCode.Generated.ReasoningPart, :t},
          {OpenCode.Generated.RetryPart, :t},
          {OpenCode.Generated.SnapshotPart, :t},
          {OpenCode.Generated.StepFinishPart, :t},
          {OpenCode.Generated.StepStartPart, :t},
          {OpenCode.Generated.SubtaskPart, :t},
          {OpenCode.Generated.TextPart, :t},
          {OpenCode.Generated.ToolPart, :t}
        ]
      ]
    ]
  end

  def __fields__(:session_shell_200_json_resp) do
    [
      info:
        {:union,
         [{OpenCode.Generated.AssistantMessage, :t}, {OpenCode.Generated.UserMessage, :t}]},
      parts: [
        union: [
          {OpenCode.Generated.AgentPart, :t},
          {OpenCode.Generated.CompactionPart, :t},
          {OpenCode.Generated.FilePart, :t},
          {OpenCode.Generated.PatchPart, :t},
          {OpenCode.Generated.ReasoningPart, :t},
          {OpenCode.Generated.RetryPart, :t},
          {OpenCode.Generated.SnapshotPart, :t},
          {OpenCode.Generated.StepFinishPart, :t},
          {OpenCode.Generated.StepStartPart, :t},
          {OpenCode.Generated.SubtaskPart, :t},
          {OpenCode.Generated.TextPart, :t},
          {OpenCode.Generated.ToolPart, :t}
        ]
      ]
    ]
  end

  def __fields__(:t) do
    [
      agent: :string,
      cost: :number,
      directory: :string,
      id: :string,
      model: {OpenCode.Generated.SessionModel, :t},
      parent_id: :string,
      path: :string,
      permission: [{OpenCode.Generated.PermissionRule, :t}],
      project_id: :string,
      revert: {OpenCode.Generated.SessionRevert, :t},
      share: {OpenCode.Generated.SessionShare, :t},
      slug: :string,
      summary: {OpenCode.Generated.SessionSummary, :t},
      time: {OpenCode.Generated.SessionTime, :t},
      title: :string,
      tokens: {OpenCode.Generated.SessionTokens, :t},
      version: :string,
      workspace_id: :string
    ]
  end
end
