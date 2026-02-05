defmodule OpenCode.Generated.EventInstallationUpdated do
  @moduledoc """
  Provides struct and type for a EventInstallationUpdated
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventInstallationUpdatedProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventInstallationUpdatedProperties, :t},
      type: {:const, "installation.updated"}
    ]
  end
end
