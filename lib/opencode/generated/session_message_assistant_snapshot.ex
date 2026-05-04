defmodule OpenCode.Generated.SessionMessageAssistantSnapshot do
  @moduledoc """
  Provides struct and type for a SessionMessageAssistantSnapshot
  """

  @type t :: %__MODULE__{end: String.t() | nil, start: String.t() | nil}

  defstruct [:end, :start]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [end: :string, start: :string]
  end
end
