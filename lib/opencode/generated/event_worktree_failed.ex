defmodule OpenCode.Generated.EventWorktreeFailed do
  @moduledoc """
  Provides struct and type for a EventWorktreeFailed
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventWorktreeFailedProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventWorktreeFailedProperties, :t},
      type: {:const, "worktree.failed"}
    ]
  end
end
