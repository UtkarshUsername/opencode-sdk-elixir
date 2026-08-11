defmodule OpenCode.Generated.SessionStatusData do
  @moduledoc """
  Provides struct and type for a SessionStatusData
  """

  @type t :: %__MODULE__{session_id: String.t(), status: map}

  defstruct [:session_id, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [session_id: :string, status: :map]
  end
end
