defmodule OpenCode.Generated.EventWorktreeFailed do
  @moduledoc """
  Provides struct and type for a EventWorktreeFailed
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventWorktreeFailedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventWorktreeFailedProperties, :t},
      type: {:const, "worktree.failed"}
    ]
  end
end
