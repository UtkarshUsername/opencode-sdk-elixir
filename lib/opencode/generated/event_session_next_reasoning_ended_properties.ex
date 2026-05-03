defmodule OpenCode.Generated.EventSessionNextReasoningEndedProperties do
  @moduledoc """
  Provides struct and type for a EventSessionNextReasoningEndedProperties
  """

  @type t :: %__MODULE__{
          reasoning_id: String.t(),
          session_id: String.t(),
          text: String.t(),
          timestamp: number
        }

  defstruct [:reasoning_id, :session_id, :text, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [reasoning_id: :string, session_id: :string, text: :string, timestamp: :number]
  end
end
