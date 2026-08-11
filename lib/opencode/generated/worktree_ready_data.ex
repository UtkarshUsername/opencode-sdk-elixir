defmodule OpenCode.Generated.WorktreeReadyData do
  @moduledoc """
  Provides struct and type for a WorktreeReadyData
  """

  @type t :: %__MODULE__{branch: String.t() | nil, name: String.t()}

  defstruct [:branch, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [branch: :string, name: :string]
  end
end
