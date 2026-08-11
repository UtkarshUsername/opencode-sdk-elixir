defmodule OpenCode.Generated.TodoUpdated do
  @moduledoc """
  Provides struct and type for a TodoUpdated
  """

  @type t :: %__MODULE__{
          data: OpenCode.Generated.TodoUpdatedData.t(),
          durable: OpenCode.Generated.TodoUpdatedDurable.t() | nil,
          id: String.t(),
          location: OpenCode.Generated.LocationRef.t() | nil,
          metadata: map | nil,
          type: String.t()
        }

  defstruct [:data, :durable, :id, :location, :metadata, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: {OpenCode.Generated.TodoUpdatedData, :t},
      durable: {OpenCode.Generated.TodoUpdatedDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "todo.updated"}
    ]
  end
end
