defmodule OpenCode.Generated.SessionNextToolCalledData do
  @moduledoc """
  Provides struct and type for a SessionNextToolCalledData
  """

  @type t :: %__MODULE__{
          assistant_message_id: String.t(),
          call_id: String.t(),
          input: map,
          provider: OpenCode.Generated.SessionNextToolCalledDataProvider.t(),
          session_id: String.t(),
          timestamp: number,
          tool: String.t()
        }

  defstruct [:assistant_message_id, :call_id, :input, :provider, :session_id, :timestamp, :tool]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      assistant_message_id: :string,
      call_id: :string,
      input: :map,
      provider: {OpenCode.Generated.SessionNextToolCalledDataProvider, :t},
      session_id: :string,
      timestamp: :number,
      tool: :string
    ]
  end
end
