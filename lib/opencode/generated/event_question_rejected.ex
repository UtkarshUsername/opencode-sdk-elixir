defmodule OpenCode.Generated.EventQuestionRejected do
  @moduledoc """
  Provides struct and type for a EventQuestionRejected
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventQuestionRejectedProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventQuestionRejectedProperties, :t},
      type: {:const, "question.rejected"}
    ]
  end
end
