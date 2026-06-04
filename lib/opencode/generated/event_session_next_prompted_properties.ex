defmodule OpenCode.Generated.EventSessionNextPromptedProperties do
  @moduledoc """
  Provides struct and type for a EventSessionNextPromptedProperties
  """

  @type t :: %__MODULE__{
          delivery: String.t(),
          prompt: OpenCode.Generated.Prompt.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:delivery, :prompt, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      delivery: {:enum, ["steer", "queue"]},
      prompt: {OpenCode.Generated.Prompt, :t},
      session_id: :string,
      timestamp: :number
    ]
  end
end
