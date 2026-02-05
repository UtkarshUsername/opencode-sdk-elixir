defmodule OpenCode.Generated.ProjectTime do
  @moduledoc """
  Provides struct and type for a ProjectTime
  """

  @type t :: %__MODULE__{created: number, initialized: number | nil, updated: number}

  defstruct [:created, :initialized, :updated]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [created: :number, initialized: :number, updated: :number]
  end
end
