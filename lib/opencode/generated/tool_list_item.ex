defmodule OpenCode.Generated.ToolListItem do
  @moduledoc """
  Provides struct and type for a ToolListItem
  """

  @type t :: %__MODULE__{description: String.t(), id: String.t(), parameters: map}

  defstruct [:description, :id, :parameters]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [description: :string, id: :string, parameters: :map]
  end
end
