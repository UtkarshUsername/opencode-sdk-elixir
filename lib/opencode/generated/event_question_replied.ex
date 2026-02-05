defmodule OpenCode.Generated.EventQuestionReplied do
  @moduledoc """
  Provides struct and type for a EventQuestionReplied
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventQuestionRepliedProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventQuestionRepliedProperties, :t},
      type: {:const, "question.replied"}
    ]
  end
end
