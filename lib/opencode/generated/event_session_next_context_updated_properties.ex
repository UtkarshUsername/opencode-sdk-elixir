defmodule OpenCode.Generated.EventSessionNextContextUpdatedProperties do
  @moduledoc """
  Provides struct and type for a EventSessionNextContextUpdatedProperties
  """

  @type t :: %__MODULE__{
          message_id: String.t(),
          session_id: String.t(),
          text: String.t(),
          timestamp: number
        }

  defstruct [:message_id, :session_id, :text, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message_id: :string, session_id: :string, text: :string, timestamp: :number]
  end
end
