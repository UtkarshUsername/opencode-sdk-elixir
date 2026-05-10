defmodule OpenCode.Generated.EventSessionNextRetriedProperties do
  @moduledoc """
  Provides struct and type for a EventSessionNextRetriedProperties
  """

  @type t :: %__MODULE__{
          attempt: number,
          error: OpenCode.Generated.SessionNextRetryError.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:attempt, :error, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      attempt: :number,
      error: {OpenCode.Generated.SessionNextRetryError, :t},
      session_id: :string,
      timestamp: :number
    ]
  end
end
