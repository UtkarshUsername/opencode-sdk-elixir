defmodule OpenCode.Generated.PermissionV2Request do
  @moduledoc """
  Provides struct and type for a PermissionV2Request
  """

  @type t :: %__MODULE__{
          action: String.t(),
          id: String.t(),
          metadata: map | nil,
          resources: [String.t()],
          save: [String.t()] | nil,
          session_id: String.t(),
          source: OpenCode.Generated.PermissionV2Source.t() | nil
        }

  defstruct [:action, :id, :metadata, :resources, :save, :session_id, :source]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      action: :string,
      id: :string,
      metadata: :map,
      resources: [:string],
      save: [:string],
      session_id: :string,
      source: {OpenCode.Generated.PermissionV2Source, :t}
    ]
  end
end
