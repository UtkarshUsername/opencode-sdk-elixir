defmodule OpenCode.Generated.Pty do
  @moduledoc """
  Provides API endpoints related to pty
  """

  @default_client OpenCode.Client

  @doc """
  Connect to PTY session

  Establish a WebSocket connection to interact with a pseudo-terminal (PTY) session in real-time.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec pty_connect(ptyID :: String.t(), opts :: keyword) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.EffectHttpApiErrorForbidden.t()
             | OpenCode.Generated.NotFoundError.t()}
  def pty_connect(ptyID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [ptyID: ptyID],
      call: {OpenCode.Generated.Pty, :pty_connect},
      url: "/pty/#{ptyID}/connect",
      method: :get,
      query: query,
      response: [
        {200, :boolean},
        {403, {OpenCode.Generated.EffectHttpApiErrorForbidden, :t}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @type pty_connect_token_200_json_resp :: %{expires_in: integer, ticket: String.t()}

  @doc """
  Create PTY WebSocket token

  Create a short-lived ticket for opening a PTY WebSocket connection.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec pty_connect_token(ptyID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Pty.pty_connect_token_200_json_resp()}
          | {:error,
             OpenCode.Generated.BadRequestError.t()
             | OpenCode.Generated.PtyForbiddenError.t()
             | OpenCode.Generated.PtyNotFoundError.t()}
  def pty_connect_token(ptyID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [ptyID: ptyID],
      call: {OpenCode.Generated.Pty, :pty_connect_token},
      url: "/pty/#{ptyID}/connect-token",
      method: :post,
      query: query,
      response: [
        {200, {OpenCode.Generated.Pty, :pty_connect_token_200_json_resp}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {403, {OpenCode.Generated.PtyForbiddenError, :t}},
        {404, {OpenCode.Generated.PtyNotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create PTY session

  Create a new pseudo-terminal (PTY) session for running shell commands and processes.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec pty_create(body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Pty.t()}
          | {:error,
             OpenCode.Generated.EffectHttpApiErrorBadRequest.t()
             | OpenCode.Generated.InvalidRequestError.t()}
  def pty_create(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Pty, :pty_create},
      url: "/pty",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Pty, :t}},
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
  Get PTY session

  Retrieve detailed information about a specific pseudo-terminal (PTY) session.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec pty_get(ptyID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.Pty.t()}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.PtyNotFoundError.t()}
  def pty_get(ptyID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [ptyID: ptyID],
      call: {OpenCode.Generated.Pty, :pty_get},
      url: "/pty/#{ptyID}",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Pty, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.PtyNotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  List PTY sessions

  Get a list of all active pseudo-terminal (PTY) sessions managed by OpenCode.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec pty_list(opts :: keyword) ::
          {:ok, [OpenCode.Generated.Pty.t()]} | {:error, OpenCode.Generated.BadRequestError.t()}
  def pty_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Pty, :pty_list},
      url: "/pty",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.Pty, :t}]},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Remove PTY session

  Remove and terminate a specific pseudo-terminal (PTY) session.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec pty_remove(ptyID :: String.t(), opts :: keyword) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.PtyNotFoundError.t()}
  def pty_remove(ptyID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [ptyID: ptyID],
      call: {OpenCode.Generated.Pty, :pty_remove},
      url: "/pty/#{ptyID}",
      method: :delete,
      query: query,
      response: [
        {200, :boolean},
        {400, {OpenCode.Generated.BadRequestError, :t}},
        {404, {OpenCode.Generated.PtyNotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @type pty_shells_200_json_resp :: %{acceptable: boolean, name: String.t(), path: String.t()}

  @doc """
  List available shells

  Get a list of available shells on the system.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec pty_shells(opts :: keyword) ::
          {:ok, [OpenCode.Generated.Pty.pty_shells_200_json_resp()]}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def pty_shells(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Pty, :pty_shells},
      url: "/pty/shells",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.Pty, :pty_shells_200_json_resp}]},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update PTY session

  Update properties of an existing pseudo-terminal (PTY) session.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec pty_update(ptyID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.Pty.t()}
          | {:error,
             OpenCode.Generated.EffectHttpApiErrorBadRequest.t()
             | OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.PtyNotFoundError.t()}
  def pty_update(ptyID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [ptyID: ptyID, body: body],
      call: {OpenCode.Generated.Pty, :pty_update},
      url: "/pty/#{ptyID}",
      body: body,
      method: :put,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.Pty, :t}},
        {400,
         {:union,
          [
            {OpenCode.Generated.EffectHttpApiErrorBadRequest, :t},
            {OpenCode.Generated.InvalidRequestError, :t}
          ]}},
        {404, {OpenCode.Generated.PtyNotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @type t :: %__MODULE__{
          args: [String.t()],
          command: String.t(),
          cwd: String.t(),
          id: String.t(),
          pid: integer,
          status: String.t(),
          title: String.t()
        }

  defstruct [:args, :command, :cwd, :id, :pid, :status, :title]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:pty_connect_token_200_json_resp) do
    [expires_in: :integer, ticket: :string]
  end

  def __fields__(:pty_shells_200_json_resp) do
    [acceptable: :boolean, name: :string, path: :string]
  end

  def __fields__(:t) do
    [
      args: [:string],
      command: :string,
      cwd: :string,
      id: :string,
      pid: :integer,
      status: {:enum, ["running", "exited"]},
      title: :string
    ]
  end
end
