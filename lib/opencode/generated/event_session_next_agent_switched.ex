defmodule OpenCode.Generated.EventSessionNextAgentSwitched do
  @moduledoc """
  Provides struct and type for a EventSessionNextAgentSwitched
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventSessionNextAgentSwitchedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventSessionNextAgentSwitchedProperties, :t},
      type: {:const, "session.next.agent.switched"}
    ]
  end
end
