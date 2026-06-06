defmodule OpenCode.Generated.EventSessionNextCompactionEndedProperties do
  @moduledoc """
  Provides struct and type for a EventSessionNextCompactionEndedProperties
  """

  @type t :: %__MODULE__{
          message_id: String.t(),
          reason: String.t(),
          recent: String.t(),
          session_id: String.t(),
          text: String.t(),
          timestamp: number
        }

  defstruct [:message_id, :reason, :recent, :session_id, :text, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      message_id: :string,
      reason: {:enum, ["auto", "manual"]},
      recent: :string,
      session_id: :string,
      text: :string,
      timestamp: :number
    ]
  end
end
