defmodule OpenCode.Generated.EventFileEdited do
  @moduledoc """
  Provides struct and type for a EventFileEdited
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventFileEditedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventFileEditedProperties, :t},
      type: {:const, "file.edited"}
    ]
  end
end
