defmodule OpenCode.Generated.McpUnsupportedOAuthError do
  @moduledoc """
  Provides struct and type for a McpUnsupportedOAuthError
  """

  @type t :: %__MODULE__{error: String.t()}

  defstruct [:error]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [error: :string]
  end
end
