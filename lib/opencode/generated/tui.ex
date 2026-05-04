defmodule OpenCode.Generated.Tui do
  @moduledoc """
  Provides API endpoints related to tui
  """

  @default_client OpenCode.Client

  @doc """
  Append TUI prompt

  Append prompt to the TUI.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec tui_append_prompt(body :: map, opts :: keyword) ::
          {:ok, boolean} | {:error, OpenCode.Generated.BadRequestError.t()}
  def tui_append_prompt(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Tui, :tui_append_prompt},
      url: "/tui/append-prompt",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [{200, :boolean}, {400, {OpenCode.Generated.BadRequestError, :t}}],
      opts: opts
    })
  end

  @doc """
  Clear TUI prompt

  Clear the prompt.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec tui_clear_prompt(opts :: keyword) :: {:ok, boolean} | :error
  def tui_clear_prompt(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Tui, :tui_clear_prompt},
      url: "/tui/clear-prompt",
      method: :post,
      query: query,
      response: [{200, :boolean}],
      opts: opts
    })
  end

  @type tui_control_next_200_json_resp :: %{body: map, path: String.t()}

  @doc """
  Get next TUI request

  Retrieve the next TUI request from the queue for processing.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec tui_control_next(opts :: keyword) ::
          {:ok, OpenCode.Generated.Tui.tui_control_next_200_json_resp()} | :error
  def tui_control_next(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Tui, :tui_control_next},
      url: "/tui/control/next",
      method: :get,
      query: query,
      response: [{200, {OpenCode.Generated.Tui, :tui_control_next_200_json_resp}}],
      opts: opts
    })
  end

  @doc """
  Submit TUI response

  Submit a response to the TUI request queue to complete a pending request.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec tui_control_response(body :: map, opts :: keyword) :: {:ok, boolean} | :error
  def tui_control_response(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Tui, :tui_control_response},
      url: "/tui/control/response",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [{200, :boolean}],
      opts: opts
    })
  end

  @doc """
  Execute TUI command

  Execute a TUI command.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec tui_execute_command(body :: map, opts :: keyword) ::
          {:ok, boolean} | {:error, OpenCode.Generated.BadRequestError.t()}
  def tui_execute_command(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Tui, :tui_execute_command},
      url: "/tui/execute-command",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [{200, :boolean}, {400, {OpenCode.Generated.BadRequestError, :t}}],
      opts: opts
    })
  end

  @doc """
  Open help dialog

  Open the help dialog in the TUI to display user assistance information.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec tui_open_help(opts :: keyword) :: {:ok, boolean} | :error
  def tui_open_help(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Tui, :tui_open_help},
      url: "/tui/open-help",
      method: :post,
      query: query,
      response: [{200, :boolean}],
      opts: opts
    })
  end

  @doc """
  Open models dialog

  Open the model dialog.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec tui_open_models(opts :: keyword) :: {:ok, boolean} | :error
  def tui_open_models(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Tui, :tui_open_models},
      url: "/tui/open-models",
      method: :post,
      query: query,
      response: [{200, :boolean}],
      opts: opts
    })
  end

  @doc """
  Open sessions dialog

  Open the session dialog.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec tui_open_sessions(opts :: keyword) :: {:ok, boolean} | :error
  def tui_open_sessions(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Tui, :tui_open_sessions},
      url: "/tui/open-sessions",
      method: :post,
      query: query,
      response: [{200, :boolean}],
      opts: opts
    })
  end

  @doc """
  Open themes dialog

  Open the theme dialog.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec tui_open_themes(opts :: keyword) :: {:ok, boolean} | :error
  def tui_open_themes(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Tui, :tui_open_themes},
      url: "/tui/open-themes",
      method: :post,
      query: query,
      response: [{200, :boolean}],
      opts: opts
    })
  end

  @doc """
  Publish TUI event

  Publish a TUI event.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec tui_publish(
          body ::
            OpenCode.Generated.EventTuiCommandExecute.t()
            | OpenCode.Generated.EventTuiPromptAppend.t()
            | OpenCode.Generated.EventTuiSessionSelect.t()
            | OpenCode.Generated.EventTuiToastShow.t(),
          opts :: keyword
        ) :: {:ok, boolean} | {:error, OpenCode.Generated.BadRequestError.t()}
  def tui_publish(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Tui, :tui_publish},
      url: "/tui/publish",
      body: body,
      method: :post,
      query: query,
      request: [
        {"application/json",
         {:union,
          [
            {OpenCode.Generated.EventTuiCommandExecute, :t},
            {OpenCode.Generated.EventTuiPromptAppend, :t},
            {OpenCode.Generated.EventTuiSessionSelect, :t},
            {OpenCode.Generated.EventTuiToastShow, :t}
          ]}}
      ],
      response: [{200, :boolean}, {400, {OpenCode.Generated.BadRequestError, :t}}],
      opts: opts
    })
  end

  @doc """
  Select session

  Navigate the TUI to display the specified session.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec tui_select_session(body :: map, opts :: keyword) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.BadRequestError.t() | OpenCode.Generated.NotFoundError.t()}
  def tui_select_session(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Tui, :tui_select_session},
      url: "/tui/select-session",
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
  Show TUI toast

  Show a toast notification in the TUI.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec tui_show_toast(body :: map, opts :: keyword) :: {:ok, boolean} | :error
  def tui_show_toast(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.Tui, :tui_show_toast},
      url: "/tui/show-toast",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [{200, :boolean}],
      opts: opts
    })
  end

  @doc """
  Submit TUI prompt

  Submit the prompt.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec tui_submit_prompt(opts :: keyword) :: {:ok, boolean} | :error
  def tui_submit_prompt(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Tui, :tui_submit_prompt},
      url: "/tui/submit-prompt",
      method: :post,
      query: query,
      response: [{200, :boolean}],
      opts: opts
    })
  end

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(:tui_control_next_200_json_resp) do
    [body: :map, path: :string]
  end
end
