defmodule OpenCode.Generated.ProjectCopy do
  @moduledoc """
  Provides API endpoints related to project copy
  """

  @default_client OpenCode.Client

  @type experimental_project_copy_generate_name_200_json_resp :: %{name: String.t()}

  @doc """
  Generate project copy name

  Generate a short name for a project copy from task context.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec experimental_project_copy_generate_name(
          projectID :: String.t(),
          body :: map,
          opts :: keyword
        ) ::
          {:ok,
           OpenCode.Generated.ProjectCopy.experimental_project_copy_generate_name_200_json_resp()}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def experimental_project_copy_generate_name(projectID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [projectID: projectID, body: body],
      call: {OpenCode.Generated.ProjectCopy, :experimental_project_copy_generate_name},
      url: "/experimental/project/#{projectID}/copy/generate-name",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200,
         {OpenCode.Generated.ProjectCopy, :experimental_project_copy_generate_name_200_json_resp}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  post `/experimental/project/{projectID}/copy`

  ## Options

    * `location`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec v2_project_copy_create(projectID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, OpenCode.Generated.ProjectCopyCopy.t()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.ProjectCopyError.t()}
  def v2_project_copy_create(projectID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [projectID: projectID, body: body],
      call: {OpenCode.Generated.ProjectCopy, :v2_project_copy_create},
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
  post `/experimental/project/{projectID}/copy/refresh`

  ## Options

    * `location`

  """
  @spec v2_project_copy_refresh(projectID :: String.t(), opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.ProjectCopyError.t()}
  def v2_project_copy_refresh(projectID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [projectID: projectID],
      call: {OpenCode.Generated.ProjectCopy, :v2_project_copy_refresh},
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
  delete `/experimental/project/{projectID}/copy`

  ## Options

    * `location`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec v2_project_copy_remove(projectID :: String.t(), body :: map, opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.ProjectCopyError.t()}
  def v2_project_copy_remove(projectID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [projectID: projectID, body: body],
      call: {OpenCode.Generated.ProjectCopy, :v2_project_copy_remove},
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

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(:experimental_project_copy_generate_name_200_json_resp) do
    [name: :string]
  end
end
