defmodule OpenCode.Generated.ConfigWatcher do
  @moduledoc """
  Provides struct and type for a ConfigWatcher
  """

  @type t :: %__MODULE__{ignore: [String.t()] | nil}

  defstruct [:ignore]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [ignore: [:string]]
  end
end
