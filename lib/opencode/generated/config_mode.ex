defmodule OpenCode.Generated.ConfigMode do
  @moduledoc """
  Provides struct and type for a ConfigMode
  """

  @type t :: %__MODULE__{
          build: OpenCode.Generated.AgentConfig.t() | nil,
          plan: OpenCode.Generated.AgentConfig.t() | nil
        }

  defstruct [:build, :plan]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [build: {OpenCode.Generated.AgentConfig, :t}, plan: {OpenCode.Generated.AgentConfig, :t}]
  end
end
