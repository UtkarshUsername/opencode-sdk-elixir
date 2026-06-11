defmodule OpenCode.Generated.EventConnectorUpdated do
  @moduledoc """
  Provides struct and type for a EventConnectorUpdated
  """

  @type t :: %__MODULE__{id: String.t(), properties: map, type: String.t()}

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [id: :string, properties: :map, type: {:const, "connector.updated"}]
  end
end
