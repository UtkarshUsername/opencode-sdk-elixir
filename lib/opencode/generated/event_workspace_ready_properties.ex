defmodule OpenCode.Generated.EventWorkspaceReadyProperties do
  @moduledoc """
  Provides struct and type for a EventWorkspaceReadyProperties
  """

  @type t :: %__MODULE__{name: String.t()}

  defstruct [:name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [name: :string]
  end
end
