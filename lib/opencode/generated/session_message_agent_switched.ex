defmodule OpenCode.Generated.SessionMessageAgentSwitched do
  @moduledoc """
  Provides struct and type for a SessionMessageAgentSwitched
  """

  @type t :: %__MODULE__{
          agent: String.t(),
          id: String.t(),
          metadata: map | nil,
          time: OpenCode.Generated.SessionMessageAgentSwitchedTime.t(),
          type: String.t()
        }

  defstruct [:agent, :id, :metadata, :time, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      agent: :string,
      id: :string,
      metadata: :map,
      time: {OpenCode.Generated.SessionMessageAgentSwitchedTime, :t},
      type: {:const, "agent-switched"}
    ]
  end
end
