defmodule OpenCode.Generated.WorktreeRemoveInput do
  @moduledoc """
  Provides struct and type for a WorktreeRemoveInput
  """

  @type t :: %__MODULE__{directory: String.t()}

  defstruct [:directory]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [directory: :string]
  end
end
