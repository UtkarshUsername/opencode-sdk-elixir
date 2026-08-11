defmodule OpenCode.Generated.SessionNextModelSwitchedData do
  @moduledoc """
  Provides struct and type for a SessionNextModelSwitchedData
  """

  @type t :: %__MODULE__{
          message_id: String.t(),
          model: OpenCode.Generated.ModelRef.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:message_id, :model, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      message_id: :string,
      model: {OpenCode.Generated.ModelRef, :t},
      session_id: :string,
      timestamp: :number
    ]
  end
end
