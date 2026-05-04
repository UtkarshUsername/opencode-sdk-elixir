defmodule OpenCode.Generated.SessionMessageModelSwitchedTime do
  @moduledoc """
  Provides struct and type for a SessionMessageModelSwitchedTime
  """

  @type t :: %__MODULE__{created: number}

  defstruct [:created]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [created: :number]
  end
end
