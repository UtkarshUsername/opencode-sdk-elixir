defmodule OpenCode.Generated.EventSessionNextToolFailedProperties do
  @moduledoc """
  Provides struct and type for a EventSessionNextToolFailedProperties
  """

  @type t :: %__MODULE__{
          call_id: String.t(),
          error: OpenCode.Generated.EventSessionNextToolFailedPropertiesError.t(),
          provider: OpenCode.Generated.EventSessionNextToolFailedPropertiesProvider.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:call_id, :error, :provider, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      call_id: :string,
      error: {OpenCode.Generated.EventSessionNextToolFailedPropertiesError, :t},
      provider: {OpenCode.Generated.EventSessionNextToolFailedPropertiesProvider, :t},
      session_id: :string,
      timestamp: :number
    ]
  end
end
