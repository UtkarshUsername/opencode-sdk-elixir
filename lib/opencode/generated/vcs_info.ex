defmodule OpenCode.Generated.VcsInfo do
  @moduledoc """
  Provides struct and type for a VcsInfo
  """

  @type t :: %__MODULE__{branch: String.t() | nil, default_branch: String.t() | nil}

  defstruct [:branch, :default_branch]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [branch: :string, default_branch: :string]
  end
end
