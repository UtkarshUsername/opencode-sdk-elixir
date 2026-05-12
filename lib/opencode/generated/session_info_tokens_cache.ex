defmodule OpenCode.Generated.SessionInfoTokensCache do
  @moduledoc """
  Provides struct and type for a SessionInfoTokensCache
  """

  @type t :: %__MODULE__{read: number, write: number}

  defstruct [:read, :write]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [read: :number, write: :number]
  end
end
