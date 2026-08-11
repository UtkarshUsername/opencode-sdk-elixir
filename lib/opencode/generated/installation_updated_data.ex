defmodule OpenCode.Generated.InstallationUpdatedData do
  @moduledoc """
  Provides struct and type for a InstallationUpdatedData
  """

  @type t :: %__MODULE__{version: String.t()}

  defstruct [:version]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [version: :string]
  end
end
