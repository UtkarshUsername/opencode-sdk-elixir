defmodule OpenCode.Generated.PermissionAskedData do
  @moduledoc """
  Provides struct and type for a PermissionAskedData
  """

  @type t :: %__MODULE__{
          always: [String.t()],
          id: String.t(),
          metadata: map,
          patterns: [String.t()],
          permission: String.t(),
          session_id: String.t(),
          tool: OpenCode.Generated.PermissionAskedDataTool.t() | nil
        }

  defstruct [:always, :id, :metadata, :patterns, :permission, :session_id, :tool]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      always: [:string],
      id: :string,
      metadata: :map,
      patterns: [:string],
      permission: :string,
      session_id: :string,
      tool: {OpenCode.Generated.PermissionAskedDataTool, :t}
    ]
  end
end
