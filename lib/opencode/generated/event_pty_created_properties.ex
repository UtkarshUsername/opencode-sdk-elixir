defmodule OpenCode.Generated.EventPtyCreatedProperties do
  @moduledoc """
  Provides struct and type for a EventPtyCreatedProperties
  """

  @type t :: %__MODULE__{info: OpenCode.Generated.Pty.t()}

  defstruct [:info]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [info: {OpenCode.Generated.Pty, :t}]
  end
end
