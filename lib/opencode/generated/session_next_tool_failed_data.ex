defmodule OpenCode.Generated.SessionNextToolFailedData do
  @moduledoc """
  Provides struct and type for a SessionNextToolFailedData
  """

  @type t :: %__MODULE__{
          assistant_message_id: String.t(),
          call_id: String.t(),
          error: OpenCode.Generated.SessionErrorUnknown.t(),
          provider: OpenCode.Generated.SessionNextToolFailedDataProvider.t(),
          result: map | nil,
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:assistant_message_id, :call_id, :error, :provider, :result, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      assistant_message_id: :string,
      call_id: :string,
      error: {OpenCode.Generated.SessionErrorUnknown, :t},
      provider: {OpenCode.Generated.SessionNextToolFailedDataProvider, :t},
      result: :map,
      session_id: :string,
      timestamp: :number
    ]
  end
end
