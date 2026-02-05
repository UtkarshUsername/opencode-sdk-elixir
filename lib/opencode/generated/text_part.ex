defmodule OpenCode.Generated.TextPart do
  @moduledoc """
  Provides struct and type for a TextPart
  """

  @type t :: %__MODULE__{
          id: String.t(),
          ignored: boolean | nil,
          message_id: String.t(),
          metadata: map | nil,
          session_id: String.t(),
          synthetic: boolean | nil,
          text: String.t(),
          time: OpenCode.Generated.TextPartTime.t() | nil,
          type: String.t()
        }

  defstruct [:id, :ignored, :message_id, :metadata, :session_id, :synthetic, :text, :time, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      ignored: :boolean,
      message_id: :string,
      metadata: :map,
      session_id: :string,
      synthetic: :boolean,
      text: :string,
      time: {OpenCode.Generated.TextPartTime, :t},
      type: {:const, "text"}
    ]
  end
end
