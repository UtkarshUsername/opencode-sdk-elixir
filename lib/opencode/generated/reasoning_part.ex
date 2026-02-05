defmodule OpenCode.Generated.ReasoningPart do
  @moduledoc """
  Provides struct and type for a ReasoningPart
  """

  @type t :: %__MODULE__{
          id: String.t(),
          message_id: String.t(),
          metadata: map | nil,
          session_id: String.t(),
          text: String.t(),
          time: OpenCode.Generated.ReasoningPartTime.t(),
          type: String.t()
        }

  defstruct [:id, :message_id, :metadata, :session_id, :text, :time, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      message_id: :string,
      metadata: :map,
      session_id: :string,
      text: :string,
      time: {OpenCode.Generated.ReasoningPartTime, :t},
      type: {:const, "reasoning"}
    ]
  end
end
