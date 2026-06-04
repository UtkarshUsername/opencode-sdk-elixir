defmodule OpenCode.Generated.QuestionV2Reply do
  @moduledoc """
  Provides struct and type for a QuestionV2Reply
  """

  @type t :: %__MODULE__{answers: [[String.t()]]}

  defstruct [:answers]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [answers: [[:string]]]
  end
end
