defmodule OpenCode.Generated.EventSessionNextToolInputEndedProperties do
  @moduledoc """
  Provides struct and type for a EventSessionNextToolInputEndedProperties
  """

  @type t :: %__MODULE__{
          call_id: String.t(),
          session_id: String.t(),
          text: String.t(),
          timestamp: number
        }

  defstruct [:call_id, :session_id, :text, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [call_id: :string, session_id: :string, text: :string, timestamp: :number]
  end
end
