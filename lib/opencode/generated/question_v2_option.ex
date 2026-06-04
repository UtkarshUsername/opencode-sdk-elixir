defmodule OpenCode.Generated.QuestionV2Option do
  @moduledoc """
  Provides struct and type for a QuestionV2Option
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
