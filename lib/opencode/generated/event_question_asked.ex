defmodule OpenCode.Generated.EventQuestionAsked do
  @moduledoc """
  Provides struct and type for a EventQuestionAsked
  """

  @type t :: %__MODULE__{properties: OpenCode.Generated.QuestionRequest.t(), type: String.t()}

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [properties: {OpenCode.Generated.QuestionRequest, :t}, type: {:const, "question.asked"}]
  end
end
