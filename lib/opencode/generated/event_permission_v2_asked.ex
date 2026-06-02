defmodule OpenCode.Generated.EventPermissionV2Asked do
  @moduledoc """
  Provides struct and type for a EventPermissionV2Asked
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventPermissionV2AskedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventPermissionV2AskedProperties, :t},
      type: {:const, "permission.v2.asked"}
    ]
  end
end
