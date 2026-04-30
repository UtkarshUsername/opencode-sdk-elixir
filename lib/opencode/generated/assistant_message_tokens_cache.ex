defmodule OpenCode.Generated.AssistantMessageTokensCache do
  @moduledoc """
  Provides struct and type for a AssistantMessageTokensCache
  """

  @type t :: %__MODULE__{read: integer, write: integer}

  defstruct [:read, :write]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [read: :integer, write: :integer]
  end
end
