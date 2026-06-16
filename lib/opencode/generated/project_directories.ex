defmodule OpenCode.Generated.ProjectDirectories do
  @moduledoc """
  Provides struct and type for a ProjectDirectories
  """

  @type t :: %__MODULE__{directory: String.t(), strategy: String.t() | nil}

  defstruct [:directory, :strategy]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [directory: :string, strategy: :string]
  end
end
