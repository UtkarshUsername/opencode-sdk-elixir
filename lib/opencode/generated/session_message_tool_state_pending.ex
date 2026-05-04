defmodule OpenCode.Generated.SessionMessageToolStatePending do
  @moduledoc """
  Provides struct and type for a SessionMessageToolStatePending
  """

  @type t :: %__MODULE__{input: String.t(), status: String.t()}

  defstruct [:input, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [input: :string, status: {:const, "pending"}]
  end
end
