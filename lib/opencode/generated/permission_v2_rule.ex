defmodule OpenCode.Generated.PermissionV2Rule do
  @moduledoc """
  Provides struct and type for a PermissionV2Rule
  """

  @type t :: %__MODULE__{action: String.t(), effect: String.t(), resource: String.t()}

  defstruct [:action, :effect, :resource]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [action: :string, effect: {:enum, ["allow", "deny", "ask"]}, resource: :string]
  end
end
