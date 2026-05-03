defmodule OpenCode.Generated.EventTodoUpdated do
  @moduledoc """
  Provides struct and type for a EventTodoUpdated
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventTodoUpdatedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventTodoUpdatedProperties, :t},
      type: {:const, "todo.updated"}
    ]
  end
end
