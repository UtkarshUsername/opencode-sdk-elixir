defmodule OpenCode.Generated.Todo do
  @moduledoc """
  Provides struct and type for a Todo
  """

  @type t :: %__MODULE__{
          content: String.t(),
          id: String.t(),
          priority: String.t(),
          status: String.t()
        }

  defstruct [:content, :id, :priority, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [content: :string, id: :string, priority: :string, status: :string]
  end
end
