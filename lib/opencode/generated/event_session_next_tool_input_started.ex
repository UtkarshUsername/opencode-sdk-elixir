defmodule OpenCode.Generated.EventSessionNextToolInputStarted do
  @moduledoc """
  Provides struct and type for a EventSessionNextToolInputStarted
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextToolInputStartedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextToolInputStartedProperties, :t},
      type: {:const, "session.next.tool.input.started"}
    ]
  end
end
