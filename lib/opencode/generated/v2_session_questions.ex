defmodule OpenCode.Generated.V2SessionQuestions do
  @moduledoc """
  Provides API endpoints related to v2 session questions
  """

  @default_client OpenCode.Client

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
      call: {OpenCode.Generated.V2SessionQuestions, :v2_session_question_reject},
      url: "/api/session/#{sessionID}/question/request/#{requestID}/reject",
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
      call: {OpenCode.Generated.V2SessionQuestions, :v2_session_question_reply},
      url: "/api/session/#{sessionID}/question/request/#{requestID}/reply",
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
end
