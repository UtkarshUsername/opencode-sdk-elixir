defmodule OpenCode.Generated.SessionNotFoundError do
  @moduledoc """
  Provides struct and type for a SessionNotFoundError
  """

  @type t :: %__MODULE__{message: String.t(), session_id: String.t(), tag: String.t()}

  defstruct [:message, :session_id, :tag]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message: :string, session_id: :string, tag: {:const, "SessionNotFoundError"}]
  end
end
