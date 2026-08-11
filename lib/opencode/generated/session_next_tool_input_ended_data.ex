defmodule OpenCode.Generated.SessionNextToolInputEndedData do
  @moduledoc """
  Provides struct and type for a SessionNextToolInputEndedData
  """

  @type t :: %__MODULE__{
          assistant_message_id: String.t(),
          call_id: String.t(),
          session_id: String.t(),
          text: String.t(),
          timestamp: number
        }

  defstruct [:assistant_message_id, :call_id, :session_id, :text, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      assistant_message_id: :string,
      call_id: :string,
      session_id: :string,
      text: :string,
      timestamp: :number
    ]
  end
end
