defmodule OpenCode.Generated.Session do
  @moduledoc """
  Provides API endpoints related to session
  """

  @default_client OpenCode.Client

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

  @type t :: %__MODULE__{
          directory: String.t(),
          id: String.t(),
          parent_id: String.t() | nil,
          permission: [OpenCode.Generated.PermissionRule.t()] | nil,
          project_id: String.t(),
          revert: OpenCode.Generated.SessionRevert.t() | nil,
          share: OpenCode.Generated.SessionShare.t() | nil,
          slug: String.t(),
          summary: OpenCode.Generated.SessionSummary.t() | nil,
          time: OpenCode.Generated.SessionTime.t(),
          title: String.t(),
          version: String.t(),
          workspace_id: String.t() | nil
        }

  defstruct [
    :directory,
    :id,
    :parent_id,
    :permission,
    :project_id,
    :revert,
    :share,
    :slug,
    :summary,
    :time,
    :title,
    :version,
    :workspace_id
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      directory: :string,
      id: :string,
      parent_id: :string,
      permission: [{OpenCode.Generated.PermissionRule, :t}],
      project_id: :string,
      revert: {OpenCode.Generated.SessionRevert, :t},
      share: {OpenCode.Generated.SessionShare, :t},
      slug: :string,
      summary: {OpenCode.Generated.SessionSummary, :t},
      time: {OpenCode.Generated.SessionTime, :t},
      title: :string,
      version: :string,
      workspace_id: :string
    ]
  end
end
