defmodule OpenCode.Generated.MCPStatusDisabled do
  @moduledoc """
  Provides struct and type for a MCPStatusDisabled
  """

  @type t :: %__MODULE__{status: String.t()}

  defstruct [:status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [status: {:const, "disabled"}]
  end
end
