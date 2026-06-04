defmodule OpenCode.Generated.ModelV2Info1Request do
  @moduledoc """
  Provides struct and type for a ModelV2Info1Request
  """

  @type t :: %__MODULE__{body: map, headers: map, variant: String.t() | nil}

  defstruct [:body, :headers, :variant]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [body: :map, headers: :map, variant: :string]
  end
end
