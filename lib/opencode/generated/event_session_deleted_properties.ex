defmodule OpenCode.Generated.EventSessionDeletedProperties do
  @moduledoc """
  Provides struct and type for a EventSessionDeletedProperties
  """

  @type t :: %__MODULE__{info: OpenCode.Generated.Session.t()}

  defstruct [:info]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [info: {OpenCode.Generated.Session, :t}]
  end
end
