defmodule OpenCode.Generated.AgentPartInput do
  @moduledoc """
  Provides struct and type for a AgentPartInput
  """

  @type t :: %__MODULE__{
          id: String.t() | nil,
          name: String.t(),
          source: OpenCode.Generated.AgentPartInputSource.t() | nil,
          type: String.t()
        }

  defstruct [:id, :name, :source, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      name: :string,
      source: {OpenCode.Generated.AgentPartInputSource, :t},
      type: {:const, "agent"}
    ]
  end
end
