defmodule OpenCode.Generated.V2Questions do
  @moduledoc """
  Provides API endpoint related to v2 questions
  """

  @default_client OpenCode.Client

  @type v2_question_request_list_200_json_resp :: %{
          data: [OpenCode.Generated.QuestionV2Request.t()],
          location: OpenCode.Generated.LocationInfo.t()
        }

  @doc """
  List pending question requests

  Retrieve pending question requests for a location.

  ## Options

    * `location`

  """
  @spec v2_question_request_list(opts :: keyword) ::
          {:ok, OpenCode.Generated.V2Questions.v2_question_request_list_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_question_request_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.V2Questions, :v2_question_request_list},
      url: "/api/question/request",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.V2Questions, :v2_question_request_list_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(:v2_question_request_list_200_json_resp) do
    [
      data: [{OpenCode.Generated.QuestionV2Request, :t}],
      location: {OpenCode.Generated.LocationInfo, :t}
    ]
  end
end
