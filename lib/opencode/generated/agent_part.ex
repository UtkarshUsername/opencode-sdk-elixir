defmodule OpenCode.Generated.AgentPart do
  @moduledoc """
  Provides struct and type for a AgentPart
  """

  @type t :: %__MODULE__{
          id: String.t(),
          message_id: String.t(),
          name: String.t(),
          session_id: String.t(),
          source: OpenCode.Generated.AgentPartSource.t() | nil,
          type: String.t()
        }

  defstruct [:id, :message_id, :name, :session_id, :source, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      message_id: :string,
      name: :string,
      session_id: :string,
      source: {OpenCode.Generated.AgentPartSource, :t},
      type: {:const, "agent"}
    ]
  end
end
