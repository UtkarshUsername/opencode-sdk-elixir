defmodule OpenCode.Generated.EventVcsBranchUpdatedProperties do
  @moduledoc """
  Provides struct and type for a EventVcsBranchUpdatedProperties
  """

  @type t :: %__MODULE__{branch: String.t() | nil}

  defstruct [:branch]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [branch: :string]
  end
end
