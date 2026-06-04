defmodule OpenCode.Generated.V2Commands do
  @moduledoc """
  Provides API endpoint related to v2 commands
  """

  @default_client OpenCode.Client

  @type v2_command_list_200_json_resp :: %{
          data: [OpenCode.Generated.CommandV2Info.t()],
          location: OpenCode.Generated.LocationInfo.t()
        }

  @doc """
  List v2 commands

  Retrieve currently registered v2 commands.

  ## Options

    * `location`

  """
  @spec v2_command_list(opts :: keyword) ::
          {:ok, OpenCode.Generated.V2Commands.v2_command_list_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_command_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.V2Commands, :v2_command_list},
      url: "/api/command",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.V2Commands, :v2_command_list_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(:v2_command_list_200_json_resp) do
    [
      data: [{OpenCode.Generated.CommandV2Info, :t}],
      location: {OpenCode.Generated.LocationInfo, :t}
    ]
  end
end
