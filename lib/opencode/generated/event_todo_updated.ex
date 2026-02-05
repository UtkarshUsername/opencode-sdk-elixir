defmodule OpenCode.Generated.EventTodoUpdated do
  @moduledoc """
  Provides struct and type for a EventTodoUpdated
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventTodoUpdatedProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventTodoUpdatedProperties, :t},
      type: {:const, "todo.updated"}
    ]
  end
end
