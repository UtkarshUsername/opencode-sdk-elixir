defmodule OpenCode.Generated.EventProjectUpdatedPropertiesCommands do
  @moduledoc """
  Provides struct and type for a EventProjectUpdatedPropertiesCommands
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
