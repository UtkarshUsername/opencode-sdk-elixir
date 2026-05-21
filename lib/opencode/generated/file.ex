defmodule OpenCode.Generated.File do
  @moduledoc """
  Provides API endpoints related to file
  """

  @default_client OpenCode.Client

  @doc """
  List files

  List files and directories in a specified path.

  ## Options

    * `directory`
    * `workspace`
    * `path`

  """
  @spec file_list(opts :: keyword) ::
          {:ok, [OpenCode.Generated.FileNode.t()]}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def file_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :path, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.File, :file_list},
      url: "/file",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.FileNode, :t}]},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Read file

  Read the content of a specified file.

  ## Options

    * `directory`
    * `workspace`
    * `path`

  """
  @spec file_read(opts :: keyword) ::
          {:ok, OpenCode.Generated.FileContent.t()}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def file_read(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :path, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.File, :file_read},
      url: "/file/content",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.FileContent, :t}},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get file status

  Get the git status of all files in the project.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec file_status(opts :: keyword) ::
          {:ok, [OpenCode.Generated.File.t()]} | {:error, OpenCode.Generated.BadRequestError.t()}
  def file_status(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.File, :file_status},
      url: "/file/status",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.File, :t}]},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Find files

  Search for files or directories by name or pattern in the project directory.

  ## Options

    * `directory`
    * `workspace`
    * `query`
    * `dirs`
    * `type`
    * `limit`

  """
  @spec find_files(opts :: keyword) ::
          {:ok, [String.t()]} | {:error, OpenCode.Generated.BadRequestError.t()}
  def find_files(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :dirs, :limit, :query, :type, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.File, :find_files},
      url: "/find/file",
      method: :get,
      query: query,
      response: [{200, [:string]}, {400, {OpenCode.Generated.BadRequestError, :t}}],
      opts: opts
    })
  end

  @doc """
  Find symbols

  Search for workspace symbols like functions, classes, and variables using LSP.

  ## Options

    * `directory`
    * `workspace`
    * `query`

  """
  @spec find_symbols(opts :: keyword) ::
          {:ok, [OpenCode.Generated.Symbol.t()]}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def find_symbols(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :query, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.File, :find_symbols},
      url: "/find/symbol",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.Symbol, :t}]},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @type find_text_200_json_resp :: %{
          absolute_offset: integer,
          line_number: integer,
          lines: OpenCode.Generated.File.find_text_200_json_resp_lines(),
          path: OpenCode.Generated.File.find_text_200_json_resp_path(),
          submatches: [OpenCode.Generated.File.find_text_200_json_resp_submatches()]
        }

  @type find_text_200_json_resp_lines :: %{text: String.t()}

  @type find_text_200_json_resp_path :: %{text: String.t()}

  @type find_text_200_json_resp_submatches :: %{
          end: integer,
          match: OpenCode.Generated.File.find_text_200_json_resp_submatches_match(),
          start: integer
        }

  @type find_text_200_json_resp_submatches_match :: %{text: String.t()}

  @doc """
  Find text

  Search for text patterns across files in the project using ripgrep.

  ## Options

    * `directory`
    * `workspace`
    * `pattern`

  """
  @spec find_text(opts :: keyword) ::
          {:ok, [OpenCode.Generated.File.find_text_200_json_resp()]}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def find_text(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :pattern, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.File, :find_text},
      url: "/find",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.File, :find_text_200_json_resp}]},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @type t :: %__MODULE__{added: integer, path: String.t(), removed: integer, status: String.t()}

  defstruct [:added, :path, :removed, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:find_text_200_json_resp) do
    [
      absolute_offset: :integer,
      line_number: :integer,
      lines: {OpenCode.Generated.File, :find_text_200_json_resp_lines},
      path: {OpenCode.Generated.File, :find_text_200_json_resp_path},
      submatches: [{OpenCode.Generated.File, :find_text_200_json_resp_submatches}]
    ]
  end

  def __fields__(:find_text_200_json_resp_lines) do
    [text: :string]
  end

  def __fields__(:find_text_200_json_resp_path) do
    [text: :string]
  end

  def __fields__(:find_text_200_json_resp_submatches) do
    [
      end: :integer,
      match: {OpenCode.Generated.File, :find_text_200_json_resp_submatches_match},
      start: :integer
    ]
  end

  def __fields__(:find_text_200_json_resp_submatches_match) do
    [text: :string]
  end

  def __fields__(:t) do
    [
      added: :integer,
      path: :string,
      removed: :integer,
      status: {:enum, ["added", "deleted", "modified"]}
    ]
  end
end
