defmodule OpenCode.Generated.SessionNextPromptedData do
  @moduledoc """
  Provides struct and type for a SessionNextPromptedData
  """

  @type t :: %__MODULE__{
          delivery: String.t(),
          message_id: String.t(),
          prompt: OpenCode.Generated.Prompt.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:delivery, :message_id, :prompt, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      delivery: {:enum, ["steer", "queue"]},
      message_id: :string,
      prompt: {OpenCode.Generated.Prompt, :t},
      session_id: :string,
      timestamp: :number
    ]
  end
end
