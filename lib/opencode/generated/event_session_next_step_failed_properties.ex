defmodule OpenCode.Generated.EventSessionNextStepFailedProperties do
  @moduledoc """
  Provides struct and type for a EventSessionNextStepFailedProperties
  """

  @type t :: %__MODULE__{
          assistant_message_id: String.t(),
          error: OpenCode.Generated.SessionErrorUnknown.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:assistant_message_id, :error, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      assistant_message_id: :string,
      error: {OpenCode.Generated.SessionErrorUnknown, :t},
      session_id: :string,
      timestamp: :number
    ]
  end
end
