defmodule OpenCode.Generated.SessionV2InfoTime do
  @moduledoc """
  Provides struct and type for a SessionV2InfoTime
  """

  @type t :: %__MODULE__{archived: number | nil, created: number, updated: number}

  defstruct [:archived, :created, :updated]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [archived: :number, created: :number, updated: :number]
  end
end
