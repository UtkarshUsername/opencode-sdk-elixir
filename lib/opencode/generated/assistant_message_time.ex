defmodule OpenCode.Generated.AssistantMessageTime do
  @moduledoc """
  Provides struct and type for a AssistantMessageTime
  """

  @type t :: %__MODULE__{completed: integer | nil, created: integer}

  defstruct [:completed, :created]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [completed: :integer, created: :integer]
  end
end
