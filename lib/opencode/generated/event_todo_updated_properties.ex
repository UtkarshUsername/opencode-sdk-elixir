defmodule OpenCode.Generated.EventTodoUpdatedProperties do
  @moduledoc """
  Provides struct and type for a EventTodoUpdatedProperties
  """

  @type t :: %__MODULE__{session_id: String.t(), todos: [OpenCode.Generated.Todo.t()]}

  defstruct [:session_id, :todos]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [session_id: :string, todos: [{OpenCode.Generated.Todo, :t}]]
  end
end
