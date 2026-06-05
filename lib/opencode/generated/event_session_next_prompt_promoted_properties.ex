defmodule OpenCode.Generated.EventSessionNextPromptPromotedProperties do
  @moduledoc """
  Provides struct and type for a EventSessionNextPromptPromotedProperties
  """

  @type t :: %__MODULE__{
          message_id: String.t(),
          prompt: OpenCode.Generated.Prompt.t(),
          session_id: String.t(),
          time_created: number,
          timestamp: number
        }

  defstruct [:message_id, :prompt, :session_id, :time_created, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      message_id: :string,
      prompt: {OpenCode.Generated.Prompt, :t},
      session_id: :string,
      time_created: :number,
      timestamp: :number
    ]
  end
end
