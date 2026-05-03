defmodule OpenCode.Generated.EventPermissionReplied do
  @moduledoc """
  Provides struct and type for a EventPermissionReplied
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventPermissionRepliedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventPermissionRepliedProperties, :t},
      type: {:const, "permission.replied"}
    ]
  end
end
