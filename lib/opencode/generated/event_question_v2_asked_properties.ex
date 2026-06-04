defmodule OpenCode.Generated.EventQuestionV2AskedProperties do
  @moduledoc """
  Provides struct and type for a EventQuestionV2AskedProperties
  """

  @type t :: %__MODULE__{
          id: String.t(),
          questions: [OpenCode.Generated.QuestionV2Info.t()],
          session_id: String.t(),
          tool: OpenCode.Generated.QuestionV2Tool.t() | nil
        }

  defstruct [:id, :questions, :session_id, :tool]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      questions: [{OpenCode.Generated.QuestionV2Info, :t}],
      session_id: :string,
      tool: {OpenCode.Generated.QuestionV2Tool, :t}
    ]
  end
end
