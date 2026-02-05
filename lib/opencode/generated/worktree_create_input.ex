defmodule OpenCode.Generated.WorktreeCreateInput do
  @moduledoc """
  Provides struct and type for a WorktreeCreateInput
  """

  @type t :: %__MODULE__{name: String.t() | nil, start_command: String.t() | nil}

  defstruct [:name, :start_command]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [name: :string, start_command: :string]
  end
end
