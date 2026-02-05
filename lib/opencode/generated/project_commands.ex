defmodule OpenCode.Generated.ProjectCommands do
  @moduledoc """
  Provides struct and type for a ProjectCommands
  """

  @type t :: %__MODULE__{start: String.t() | nil}

  defstruct [:start]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [start: :string]
  end
end
