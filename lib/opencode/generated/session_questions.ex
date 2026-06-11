defmodule OpenCode.Generated.SessionQuestions do
  @moduledoc """
  Provides API endpoints related to session questions
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
          {:ok, OpenCode.Generated.SessionQuestions.v2_question_request_list_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_question_request_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.SessionQuestions, :v2_question_request_list},
      url: "/api/question/request",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.SessionQuestions, :v2_question_request_list_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @type v2_session_question_list_200_json_resp :: %{
          data: [OpenCode.Generated.QuestionV2Request.t()]
        }

  @doc """
  List session question requests

  Retrieve pending question requests owned by a session.
  """
  @spec v2_session_question_list(sessionID :: String.t(), opts :: keyword) ::
          {:ok, OpenCode.Generated.SessionQuestions.v2_session_question_list_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_session_question_list(sessionID, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sessionID: sessionID],
      call: {OpenCode.Generated.SessionQuestions, :v2_session_question_list},
      url: "/api/session/#{sessionID}/question",
      method: :get,
      response: [
        {200, {OpenCode.Generated.SessionQuestions, :v2_session_question_list_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404, {OpenCode.Generated.SessionNotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Reject pending question request

  Reject a pending question request owned by a session.
  """
  @spec v2_session_question_reject(
          sessionID :: String.t(),
          requestID :: String.t(),
          opts :: keyword
        ) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.QuestionNotFoundError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_session_question_reject(sessionID, requestID, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sessionID: sessionID, requestID: requestID],
      call: {OpenCode.Generated.SessionQuestions, :v2_session_question_reject},
      url: "/api/session/#{sessionID}/question/#{requestID}/reject",
      method: :post,
      response: [
        {204, :null},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404,
         {:union,
          [
            {OpenCode.Generated.QuestionNotFoundError, :t},
            {OpenCode.Generated.SessionNotFoundError, :t}
          ]}}
      ],
      opts: opts
    })
  end

  @doc """
  Reply to pending question request

  Answer a pending question request owned by a session.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec v2_session_question_reply(
          sessionID :: String.t(),
          requestID :: String.t(),
          body :: OpenCode.Generated.QuestionV2Reply.t(),
          opts :: keyword
        ) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.QuestionNotFoundError.t()
             | OpenCode.Generated.SessionNotFoundError.t()
             | OpenCode.Generated.UnauthorizedError.t()}
  def v2_session_question_reply(sessionID, requestID, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sessionID: sessionID, requestID: requestID, body: body],
      call: {OpenCode.Generated.SessionQuestions, :v2_session_question_reply},
      url: "/api/session/#{sessionID}/question/#{requestID}/reply",
      body: body,
      method: :post,
      request: [{"application/json", {OpenCode.Generated.QuestionV2Reply, :t}}],
      response: [
        {204, :null},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}},
        {404,
         {:union,
          [
            {OpenCode.Generated.QuestionNotFoundError, :t},
            {OpenCode.Generated.SessionNotFoundError, :t}
          ]}}
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

  def __fields__(:v2_session_question_list_200_json_resp) do
    [data: [{OpenCode.Generated.QuestionV2Request, :t}]]
  end
end
