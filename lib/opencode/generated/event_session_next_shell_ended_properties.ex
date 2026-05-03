defmodule OpenCode.Generated.EventSessionNextShellEndedProperties do
  @moduledoc """
  Provides struct and type for a EventSessionNextShellEndedProperties
  """

  @type t :: %__MODULE__{
          call_id: String.t(),
          output: String.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:call_id, :output, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [call_id: :string, output: :string, session_id: :string, timestamp: :number]
  end
end
