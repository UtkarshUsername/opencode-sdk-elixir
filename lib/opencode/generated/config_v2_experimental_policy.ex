defmodule OpenCode.Generated.ConfigV2ExperimentalPolicy do
  @moduledoc """
  Provides struct and type for a ConfigV2ExperimentalPolicy
  """

  @type t :: %__MODULE__{action: String.t(), effect: String.t(), resource: String.t()}

  defstruct [:action, :effect, :resource]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [action: {:const, "provider.use"}, effect: {:enum, ["allow", "deny"]}, resource: :string]
  end
end
