defmodule OpenCode.Generated.ConfigToolOutput do
  @moduledoc """
  Provides struct and type for a ConfigToolOutput
  """

  @type t :: %__MODULE__{max_bytes: integer | nil, max_lines: integer | nil}

  defstruct [:max_bytes, :max_lines]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [max_bytes: :integer, max_lines: :integer]
  end
end
