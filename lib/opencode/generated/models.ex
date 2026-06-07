defmodule OpenCode.Generated.Models do
  @moduledoc """
  Provides API endpoint related to models
  """

  @default_client OpenCode.Client

  @type v2_model_list_200_json_resp :: %{
          data: [OpenCode.Generated.ModelV2Info.t()],
          location: OpenCode.Generated.LocationInfo.t()
        }

  @doc """
  List models

  Retrieve available models ordered by release date.

  ## Options

    * `location`

  """
  @spec v2_model_list(opts :: keyword) ::
          {:ok, OpenCode.Generated.Models.v2_model_list_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.ServiceUnavailableError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_model_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Models, :v2_model_list},
      url: "/api/model",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Models, :v2_model_list_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {503, {OpenCode.Generated.ServiceUnavailableError, :t}}
      ],
      opts: opts
    })
  end

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(:v2_model_list_200_json_resp) do
    [
      data: [{OpenCode.Generated.ModelV2Info, :t}],
      location: {OpenCode.Generated.LocationInfo, :t}
    ]
  end
end
