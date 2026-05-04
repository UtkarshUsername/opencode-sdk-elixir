defmodule OpenCode.Generated.EventSessionNextStepFailedProperties do
  @moduledoc """
  Provides struct and type for a EventSessionNextStepFailedProperties
  """

  @type t :: %__MODULE__{
          error: OpenCode.Generated.EventSessionNextStepFailedPropertiesError.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:error, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      error: {OpenCode.Generated.EventSessionNextStepFailedPropertiesError, :t},
      session_id: :string,
      timestamp: :number
    ]
  end
end
