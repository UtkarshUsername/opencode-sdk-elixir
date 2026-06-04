defmodule OpenCode.Generated.EventQuestionV2Rejected do
  @moduledoc """
  Provides struct and type for a EventQuestionV2Rejected
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventQuestionV2RejectedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventQuestionV2RejectedProperties, :t},
      type: {:const, "question.v2.rejected"}
    ]
  end
end
