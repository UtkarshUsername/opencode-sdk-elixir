defmodule OpenCode.Generated.MessageNotFoundError do
  @moduledoc """
  Provides struct and type for a MessageNotFoundError
  """

  @type t :: %__MODULE__{
          message: String.t(),
          message_id: String.t(),
          session_id: String.t(),
          tag: String.t()
        }

  defstruct [:message, :message_id, :session_id, :tag]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      message: :string,
      message_id: :string,
      session_id: :string,
      tag: {:const, "MessageNotFoundError"}
    ]
  end
end
