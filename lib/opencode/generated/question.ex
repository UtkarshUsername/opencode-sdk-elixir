defmodule OpenCode.Generated.Question do
  @moduledoc """
  Provides API endpoints related to question
  """

  @default_client OpenCode.Client

  @doc """
  List pending questions

  Get all pending question requests across all sessions.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec question_list(opts :: keyword) ::
          {:ok, [OpenCode.Generated.QuestionRequest.t()]}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def question_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Question, :question_list},
      url: "/question",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.QuestionRequest, :t}]},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Reject question request

  Reject a question request from the AI assistant.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec question_reject(requestID :: String.t(), opts :: keyword) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.EffectHttpApiErrorBadRequest.t()
             | OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.NotFoundError.t()}
  def question_reject(requestID, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [requestID: requestID],
      call: {OpenCode.Generated.Question, :question_reject},
      url: "/question/#{requestID}/reject",
      method: :post,
      query: query,
      response: [
        {200, :boolean},
        {400,
         {:union,
          [
            {OpenCode.Generated.EffectHttpApiErrorBadRequest, :t},
            {OpenCode.Generated.InvalidRequestError, :t}
          ]}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Reply to question request

  Provide answers to a question request from the AI assistant.

  ## Options

    * `directory`
    * `workspace`

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec question_reply(requestID :: String.t(), body :: map, opts :: keyword) ::
          {:ok, boolean}
          | {:error,
             OpenCode.Generated.EffectHttpApiErrorBadRequest.t()
             | OpenCode.Generated.InvalidRequestError.t()
             | OpenCode.Generated.NotFoundError.t()}
  def question_reply(requestID, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [requestID: requestID, body: body],
      call: {OpenCode.Generated.Question, :question_reply},
      url: "/question/#{requestID}/reply",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", :map}],
      response: [
        {200, :boolean},
        {400,
         {:union,
          [
            {OpenCode.Generated.EffectHttpApiErrorBadRequest, :t},
            {OpenCode.Generated.InvalidRequestError, :t}
          ]}},
        {404, {OpenCode.Generated.NotFoundError, :t}}
      ],
      opts: opts
    })
  end
end
