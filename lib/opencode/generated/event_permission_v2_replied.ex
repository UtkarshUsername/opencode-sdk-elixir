defmodule OpenCode.Generated.EventPermissionV2Replied do
  @moduledoc """
  Provides struct and type for a EventPermissionV2Replied
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventPermissionV2RepliedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventPermissionV2RepliedProperties, :t},
      type: {:const, "permission.v2.replied"}
    ]
  end
end
