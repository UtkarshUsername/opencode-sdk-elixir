defmodule OpenCode.Generated.ConfigSkills do
  @moduledoc """
  Provides struct and type for a ConfigSkills
  """

  @type t :: %__MODULE__{paths: [String.t()] | nil, urls: [String.t()] | nil}

  defstruct [:paths, :urls]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [paths: [:string], urls: [:string]]
  end
end
