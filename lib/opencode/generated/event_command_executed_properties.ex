defmodule OpenCode.Generated.EventCommandExecutedProperties do
  @moduledoc """
  Provides struct and type for a EventCommandExecutedProperties
  """

  @type t :: %__MODULE__{
          arguments: String.t(),
          message_id: String.t(),
          name: String.t(),
          session_id: String.t()
        }

  defstruct [:arguments, :message_id, :name, :session_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [arguments: :string, message_id: :string, name: :string, session_id: :string]
  end
end
