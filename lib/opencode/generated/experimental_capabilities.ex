defmodule OpenCode.Generated.ExperimentalCapabilities do
  @moduledoc """
  Provides struct and type for a ExperimentalCapabilities
  """

  @type t :: %__MODULE__{background_subagents: boolean}

  defstruct [:background_subagents]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [background_subagents: :boolean]
  end
end
