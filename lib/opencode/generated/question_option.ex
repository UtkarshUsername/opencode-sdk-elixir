defmodule OpenCode.Generated.QuestionOption do
  @moduledoc """
  Provides struct and type for a QuestionOption
  """

  @type t :: %__MODULE__{description: String.t(), label: String.t()}

  defstruct [:description, :label]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [description: :string, label: :string]
  end
end
