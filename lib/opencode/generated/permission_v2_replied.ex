defmodule OpenCode.Generated.PermissionV2Replied do
  @moduledoc """
  Provides struct and type for a PermissionV2Replied
  """

  @type t :: %__MODULE__{
          data: OpenCode.Generated.PermissionV2RepliedData.t(),
          durable: OpenCode.Generated.PermissionV2RepliedDurable.t() | nil,
          id: String.t(),
          location: OpenCode.Generated.LocationRef.t() | nil,
          metadata: map | nil,
          type: String.t()
        }

  defstruct [:data, :durable, :id, :location, :metadata, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: {OpenCode.Generated.PermissionV2RepliedData, :t},
      durable: {OpenCode.Generated.PermissionV2RepliedDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "permission.v2.replied"}
    ]
  end
end
