defmodule OpenCode.Generated.EventVcsBranchUpdated do
  @moduledoc """
  Provides struct and type for a EventVcsBranchUpdated
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventVcsBranchUpdatedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventVcsBranchUpdatedProperties, :t},
      type: {:const, "vcs.branch.updated"}
    ]
  end
end
