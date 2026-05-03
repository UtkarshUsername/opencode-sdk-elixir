defmodule OpenCode.Generated.EventSessionNextModelSwitched do
  @moduledoc """
  Provides struct and type for a EventSessionNextModelSwitched
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextModelSwitchedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextModelSwitchedProperties, :t},
      type: {:const, "session.next.model.switched"}
    ]
  end
end
