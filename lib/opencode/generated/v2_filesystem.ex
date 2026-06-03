defmodule OpenCode.Generated.V2Filesystem do
  @moduledoc """
  Provides API endpoints related to v2 filesystem
  """

  @default_client OpenCode.Client

  @doc """
  List directory

  List direct children of one directory relative to the requested location.

  ## Options

    * `location`
    * `path`
    * `reference`

  """
  @spec v2_fs_list(opts :: keyword) ::
          {:ok, [OpenCode.Generated.LocationFileSystemEntry.t()]}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_fs_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location, :path, :reference])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.V2Filesystem, :v2_fs_list},
      url: "/api/fs/list",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.LocationFileSystemEntry, :t}]},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Read file

  Read one file relative to the requested location.

  ## Options

    * `location`
    * `path`
    * `reference`

  """
  @spec v2_fs_read(opts :: keyword) ::
          {:ok,
           OpenCode.Generated.LocationFileSystemBinaryContent.t()
           | OpenCode.Generated.LocationFileSystemTextContent.t()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_fs_read(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location, :path, :reference])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.V2Filesystem, :v2_fs_read},
      url: "/api/fs/read",
      method: :get,
      query: query,
      response: [
        {200,
         {:union,
          [
            {OpenCode.Generated.LocationFileSystemBinaryContent, :t},
            {OpenCode.Generated.LocationFileSystemTextContent, :t}
          ]}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end
end
