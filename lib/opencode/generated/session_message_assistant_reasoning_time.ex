defmodule OpenCode.Generated.SessionMessageAssistantReasoningTime do
  @moduledoc """
  Provides struct and type for a SessionMessageAssistantReasoningTime
  """

  @type t :: %__MODULE__{completed: number | nil, created: number}

  defstruct [:completed, :created]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [completed: :number, created: :number]
  end
end
