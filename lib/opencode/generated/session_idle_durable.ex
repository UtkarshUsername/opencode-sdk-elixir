defmodule OpenCode.Generated.SessionIdleDurable do
  @moduledoc """
  Provides struct and type for a SessionIdleDurable
  """

  @type t :: %__MODULE__{aggregate_id: String.t(), seq: integer, version: integer}

  defstruct [:aggregate_id, :seq, :version]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [aggregate_id: :string, seq: :integer, version: :integer]
  end
end
