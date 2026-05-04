defmodule OpenCode.Generated.SessionMessageAssistantToolTime do
  @moduledoc """
  Provides struct and type for a SessionMessageAssistantToolTime
  """

  @type t :: %__MODULE__{
          completed: number | nil,
          created: number,
          pruned: number | nil,
          ran: number | nil
        }

  defstruct [:completed, :created, :pruned, :ran]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [completed: :number, created: :number, pruned: :number, ran: :number]
  end
end
