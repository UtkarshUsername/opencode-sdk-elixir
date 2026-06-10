defmodule OpenCode.Generated.Reference do
  @moduledoc """
  Provides API endpoint related to reference
  """

  @default_client OpenCode.Client

  @type v2_reference_list_200_json_resp :: %{
          data: [OpenCode.Generated.ReferenceInfo.t()],
          location: OpenCode.Generated.LocationInfo.t()
        }

  @doc """
  List references

  List references available in the requested location.

  ## Options

    * `location`

  """
  @spec v2_reference_list(opts :: keyword) ::
          {:ok, OpenCode.Generated.Reference.v2_reference_list_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_reference_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Reference, :v2_reference_list},
      url: "/api/reference",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Reference, :v2_reference_list_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(:v2_reference_list_200_json_resp) do
    [
      data: [{OpenCode.Generated.ReferenceInfo, :t}],
      location: {OpenCode.Generated.LocationInfo, :t}
    ]
  end
end
