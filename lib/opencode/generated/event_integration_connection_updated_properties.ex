defmodule OpenCode.Generated.EventIntegrationConnectionUpdatedProperties do
  @moduledoc """
  Provides struct and type for a EventIntegrationConnectionUpdatedProperties
  """

  @type t :: %__MODULE__{integration_id: String.t()}

  defstruct [:integration_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [integration_id: :string]
  end
end
