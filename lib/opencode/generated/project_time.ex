defmodule OpenCode.Generated.ProjectTime do
  @moduledoc """
  Provides struct and type for a ProjectTime
  """

  @type t :: %__MODULE__{created: integer, initialized: integer | nil, updated: integer}

  defstruct [:created, :initialized, :updated]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [created: :integer, initialized: :integer, updated: :integer]
  end
end
