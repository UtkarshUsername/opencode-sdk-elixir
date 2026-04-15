defmodule OpenCode.Generated.QuestionReplied do
  @moduledoc """
  Provides struct and type for a QuestionReplied
  """

  @type t :: %__MODULE__{answers: [[String.t()]], request_id: String.t(), session_id: String.t()}

  defstruct [:answers, :request_id, :session_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [answers: [[:string]], request_id: :string, session_id: :string]
  end
end
