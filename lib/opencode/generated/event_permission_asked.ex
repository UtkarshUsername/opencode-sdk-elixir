defmodule OpenCode.Generated.EventPermissionAsked do
  @moduledoc """
  Provides struct and type for a EventPermissionAsked
  """

  @type t :: %__MODULE__{properties: OpenCode.Generated.PermissionRequest.t(), type: String.t()}

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [properties: {OpenCode.Generated.PermissionRequest, :t}, type: {:const, "permission.asked"}]
  end
end
