defmodule OpenCode.Generated.ProjectCopy do
  @moduledoc """
  Provides API endpoints related to project copy
  """

  @default_client OpenCode.Client

  @doc """
  Create project copy

  Create a local physical copy of a project using the selected strategy.

  ## Options

    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec experimental_project_copy_create(projectID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.ProjectCopyCopy.t()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.ProjectCopyError.t()}
  def experimental_project_copy_create(projectID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:workspace])

    client.request(%{
      args: [projectID: projectID, body: body],
      call: {OpenCode.Generated.ProjectCopy, :experimental_project_copy_create},
      url: "/experimental/project/#{projectID}/copy",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, {OpenCode.Generated.ProjectCopyCopy, :t}},
        {400,
         {:union,
          [
            {OpenCode.Generated.InvalidRequestError, :t},
            {OpenCode.Generated.ProjectCopyError, :t}
          ]}}
      ],
      opts: opts
    })
  end

  @doc """
  Refresh project copies

  Discover local project copies using one or all configured strategies.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec experimental_project_copy_refresh(projectID :: String.t(), opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.ProjectCopyError.t()}
  def experimental_project_copy_refresh(projectID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [projectID: projectID],
      call: {OpenCode.Generated.ProjectCopy, :experimental_project_copy_refresh},
      url: "/experimental/project/#{projectID}/copy/refresh",
      method: :post,
      query: query,
      response: [
        {204, :null},
        {400,
         {:union,
          [
            {OpenCode.Generated.InvalidRequestError, :t},
            {OpenCode.Generated.ProjectCopyError, :t}
          ]}}
      ],
      opts: opts
    })
  end

  @doc """
  Remove project copy

  Remove a local physical copy of a project using the selected strategy.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec experimental_project_copy_remove(projectID :: String.t(), body :: map, opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.ProjectCopyError.t()}
  def experimental_project_copy_remove(projectID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [projectID: projectID, body: body],
      call: {OpenCode.Generated.ProjectCopy, :experimental_project_copy_remove},
      url: "/experimental/project/#{projectID}/copy",
      body: body,
      method: :delete,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {204, :null},
        {400,
         {:union,
          [
            {OpenCode.Generated.InvalidRequestError, :t},
            {OpenCode.Generated.ProjectCopyError, :t}
          ]}}
      ],
      opts: opts
    })
  end
end
