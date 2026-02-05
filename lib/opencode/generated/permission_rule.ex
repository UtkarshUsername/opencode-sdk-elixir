defmodule OpenCode.Generated.PermissionRule do
  @moduledoc """
  Provides struct and type for a PermissionRule
  """

  @type t :: %__MODULE__{action: String.t(), pattern: String.t(), permission: String.t()}

  defstruct [:action, :pattern, :permission]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [action: {:enum, ["allow", "deny", "ask"]}, pattern: :string, permission: :string]
  end
end
