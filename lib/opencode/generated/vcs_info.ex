defmodule OpenCode.Generated.VcsInfo do
  @moduledoc """
  Provides struct and type for a VcsInfo
  """

  @type t :: %__MODULE__{branch: String.t()}

  defstruct [:branch]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [branch: :string]
  end
end
