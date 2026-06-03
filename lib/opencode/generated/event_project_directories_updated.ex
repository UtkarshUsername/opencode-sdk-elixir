defmodule OpenCode.Generated.EventProjectDirectoriesUpdated do
  @moduledoc """
  Provides struct and type for a EventProjectDirectoriesUpdated
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventProjectDirectoriesUpdatedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventProjectDirectoriesUpdatedProperties, :t},
      type: {:const, "project.directories.updated"}
    ]
  end
end
