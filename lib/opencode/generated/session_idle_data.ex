defmodule OpenCode.Generated.SessionIdleData do
  @moduledoc """
  Provides struct and type for a SessionIdleData
  """

  @type t :: %__MODULE__{session_id: String.t()}

  defstruct [:session_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [session_id: :string]
  end
end
