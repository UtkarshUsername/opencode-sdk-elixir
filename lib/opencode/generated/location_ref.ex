defmodule OpenCode.Generated.LocationRef do
  @moduledoc """
  Provides struct and type for a LocationRef
  """

  @type t :: %__MODULE__{directory: String.t(), workspace_id: String.t() | nil}

  defstruct [:directory, :workspace_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [directory: :string, workspace_id: :string]
  end
end
