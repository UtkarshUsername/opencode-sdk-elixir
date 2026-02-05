defmodule OpenCode.Generated.RetryPart do
  @moduledoc """
  Provides struct and type for a RetryPart
  """

  @type t :: %__MODULE__{
          attempt: number,
          error: OpenCode.Generated.APIError.t(),
          id: String.t(),
          message_id: String.t(),
          session_id: String.t(),
          time: OpenCode.Generated.RetryPartTime.t(),
          type: String.t()
        }

  defstruct [:attempt, :error, :id, :message_id, :session_id, :time, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      attempt: :number,
      error: {OpenCode.Generated.APIError, :t},
      id: :string,
      message_id: :string,
      session_id: :string,
      time: {OpenCode.Generated.RetryPartTime, :t},
      type: {:const, "retry"}
    ]
  end
end
