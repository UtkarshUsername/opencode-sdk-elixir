defmodule OpenCode.Generated.MCPStatusNeedsAuth do
  @moduledoc """
  Provides struct and type for a MCPStatusNeedsAuth
  """

  @type t :: %__MODULE__{status: String.t()}

  defstruct [:status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [status: {:const, "needs_auth"}]
  end
end
