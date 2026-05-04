defmodule OpenCode.Generated.SessionMessageSynthetic do
  @moduledoc """
  Provides struct and type for a SessionMessageSynthetic
  """

  @type t :: %__MODULE__{
          id: String.t(),
          metadata: map | nil,
          session_id: String.t(),
          text: String.t(),
          time: OpenCode.Generated.SessionMessageSyntheticTime.t(),
          type: String.t()
        }

  defstruct [:id, :metadata, :session_id, :text, :time, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      metadata: :map,
      session_id: :string,
      text: :string,
      time: {OpenCode.Generated.SessionMessageSyntheticTime, :t},
      type: {:const, "synthetic"}
    ]
  end
end
