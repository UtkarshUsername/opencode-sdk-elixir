defmodule OpenCode.Generated.EventSessionNextToolProgress do
  @moduledoc """
  Provides struct and type for a EventSessionNextToolProgress
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextToolProgressProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextToolProgressProperties, :t},
      type: {:const, "session.next.tool.progress"}
    ]
  end
end
