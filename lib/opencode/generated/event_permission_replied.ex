defmodule OpenCode.Generated.EventPermissionReplied do
  @moduledoc """
  Provides struct and type for a EventPermissionReplied
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventPermissionRepliedProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventPermissionRepliedProperties, :t},
      type: {:const, "permission.replied"}
    ]
  end
end
