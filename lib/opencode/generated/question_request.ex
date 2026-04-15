defmodule OpenCode.Generated.QuestionRequest do
  @moduledoc """
  Provides struct and type for a QuestionRequest
  """

  @type t :: %__MODULE__{
          id: String.t(),
          questions: [OpenCode.Generated.QuestionInfo.t()],
          session_id: String.t(),
          tool: OpenCode.Generated.QuestionTool.t() | nil
        }

  defstruct [:id, :questions, :session_id, :tool]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      questions: [{OpenCode.Generated.QuestionInfo, :t}],
      session_id: :string,
      tool: {OpenCode.Generated.QuestionTool, :t}
    ]
  end
end
