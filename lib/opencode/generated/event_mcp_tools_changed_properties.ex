defmodule OpenCode.Generated.EventMcpToolsChangedProperties do
  @moduledoc """
  Provides struct and type for a EventMcpToolsChangedProperties
  """

  @type t :: %__MODULE__{server: String.t()}

  defstruct [:server]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [server: :string]
  end
end
