defmodule OpenCode.Generated.ModelV2Info1EndpointReasoning do
  @moduledoc """
  Provides struct and types for a ModelV2Info1EndpointReasoning
  """

  @type t :: %__MODULE__{type: String.t()}

  defstruct [:type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [type: {:enum, ["reasoning_content", "reasoning_details"]}]
  end
end
