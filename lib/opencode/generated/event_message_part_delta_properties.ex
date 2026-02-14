defmodule OpenCode.Generated.EventMessagePartDeltaProperties do
  @moduledoc """
  Provides struct and type for a EventMessagePartDeltaProperties
  """

  @type t :: %__MODULE__{
          delta: String.t(),
          field: String.t(),
          message_id: String.t(),
          part_id: String.t(),
          session_id: String.t()
        }

  defstruct [:delta, :field, :message_id, :part_id, :session_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [delta: :string, field: :string, message_id: :string, part_id: :string, session_id: :string]
  end
end
