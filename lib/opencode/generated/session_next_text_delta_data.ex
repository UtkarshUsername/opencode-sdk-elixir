defmodule OpenCode.Generated.SessionNextTextDeltaData do
  @moduledoc """
  Provides struct and type for a SessionNextTextDeltaData
  """

  @type t :: %__MODULE__{
          assistant_message_id: String.t(),
          delta: String.t(),
          session_id: String.t(),
          text_id: String.t(),
          timestamp: number
        }

  defstruct [:assistant_message_id, :delta, :session_id, :text_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      assistant_message_id: :string,
      delta: :string,
      session_id: :string,
      text_id: :string,
      timestamp: :number
    ]
  end
end
