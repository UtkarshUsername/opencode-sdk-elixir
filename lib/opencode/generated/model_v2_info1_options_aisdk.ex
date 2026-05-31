defmodule OpenCode.Generated.ModelV2Info1OptionsAisdk do
  @moduledoc """
  Provides struct and type for a ModelV2Info1OptionsAisdk
  """

  @type t :: %__MODULE__{provider: map, request: map}

  defstruct [:provider, :request]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [provider: :map, request: :map]
  end
end
