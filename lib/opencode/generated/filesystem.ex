defmodule OpenCode.Generated.Filesystem do
  @moduledoc """
  Provides API endpoints related to filesystem
  """

  @default_client OpenCode.Client

  @type v2_fs_list_200_json_resp :: %{
          data: [OpenCode.Generated.FileSystemEntry.t()],
          location: OpenCode.Generated.LocationInfo.t()
        }

  @doc """
  List directory

  List direct children of one directory relative to the requested location.

  ## Options

    * `location`
    * `path`
    * `reference`

  """
  @spec v2_fs_list(opts :: keyword) ::
          {:ok, OpenCode.Generated.Filesystem.v2_fs_list_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_fs_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location, :path, :reference])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Filesystem, :v2_fs_list},
      url: "/api/fs/list",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Filesystem, :v2_fs_list_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @type v2_fs_read_200_json_resp :: %{
          data:
            OpenCode.Generated.FileSystemBinaryContent.t()
            | OpenCode.Generated.FileSystemTextContent.t(),
          location: OpenCode.Generated.LocationInfo.t()
        }

  @doc """
  Read file

  Read one file relative to the requested location.

  ## Options

    * `location`
    * `path`
    * `reference`

  """
  @spec v2_fs_read(opts :: keyword) ::
          {:ok, OpenCode.Generated.Filesystem.v2_fs_read_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_fs_read(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location, :path, :reference])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Filesystem, :v2_fs_read},
      url: "/api/fs/read",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Filesystem, :v2_fs_read_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(:v2_fs_list_200_json_resp) do
    [
      data: [{OpenCode.Generated.FileSystemEntry, :t}],
      location: {OpenCode.Generated.LocationInfo, :t}
    ]
  end

  def __fields__(:v2_fs_read_200_json_resp) do
    [
      data:
        {:union,
         [
           {OpenCode.Generated.FileSystemBinaryContent, :t},
           {OpenCode.Generated.FileSystemTextContent, :t}
         ]},
      location: {OpenCode.Generated.LocationInfo, :t}
    ]
  end
end
