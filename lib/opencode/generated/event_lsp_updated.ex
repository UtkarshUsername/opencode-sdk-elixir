defmodule OpenCode.Generated.EventLspUpdated do
  @moduledoc """
  Provides struct and type for a EventLspUpdated
  """

  @type t :: %__MODULE__{properties: map, type: String.t()}

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [properties: :map, type: {:const, "lsp.updated"}]
  end
end
