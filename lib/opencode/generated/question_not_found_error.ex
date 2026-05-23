defmodule OpenCode.Generated.QuestionNotFoundError do
  @moduledoc """
  Provides struct and type for a QuestionNotFoundError
  """

  @type t :: %__MODULE__{message: String.t(), request_id: String.t(), tag: String.t()}

  defstruct [:message, :request_id, :tag]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message: :string, request_id: :string, tag: {:const, "QuestionNotFoundError"}]
  end
end
