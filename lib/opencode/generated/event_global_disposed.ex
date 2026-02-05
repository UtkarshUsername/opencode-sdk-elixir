defmodule OpenCode.Generated.EventGlobalDisposed do
  @moduledoc """
  Provides struct and type for a EventGlobalDisposed
  """

  @type t :: %__MODULE__{properties: map, type: String.t()}

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [properties: :map, type: {:const, "global.disposed"}]
  end
end
