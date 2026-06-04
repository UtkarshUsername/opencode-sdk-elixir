defmodule OpenCode.Generated.EventSessionNextToolInputDeltaProperties do
  @moduledoc """
  Provides struct and type for a EventSessionNextToolInputDeltaProperties
  """

  @type t :: %__MODULE__{
          assistant_message_id: String.t(),
          call_id: String.t(),
          delta: String.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:assistant_message_id, :call_id, :delta, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      assistant_message_id: :string,
      call_id: :string,
      delta: :string,
      session_id: :string,
      timestamp: :number
    ]
  end
end
