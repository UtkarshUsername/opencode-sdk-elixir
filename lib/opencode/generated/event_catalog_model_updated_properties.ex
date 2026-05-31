defmodule OpenCode.Generated.EventCatalogModelUpdatedProperties do
  @moduledoc """
  Provides struct and type for a EventCatalogModelUpdatedProperties
  """

  @type t :: %__MODULE__{model: OpenCode.Generated.ModelV2Info1.t()}

  defstruct [:model]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [model: {OpenCode.Generated.ModelV2Info1, :t}]
  end
end
