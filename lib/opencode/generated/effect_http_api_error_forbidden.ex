defmodule OpenCode.Generated.EffectHttpApiErrorForbidden do
  @moduledoc """
  Provides struct and type for a EffectHttpApiErrorForbidden
  """

  @type t :: %__MODULE__{tag: String.t()}

  defstruct [:tag]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [tag: {:const, "Forbidden"}]
  end
end
