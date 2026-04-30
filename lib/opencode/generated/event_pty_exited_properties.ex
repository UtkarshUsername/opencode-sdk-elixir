defmodule OpenCode.Generated.EventPtyExitedProperties do
  @moduledoc """
  Provides struct and type for a EventPtyExitedProperties
  """

  @type t :: %__MODULE__{exit_code: integer, id: String.t()}

  defstruct [:exit_code, :id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [exit_code: :integer, id: :string]
  end
end
