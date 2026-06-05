defmodule OpenCode.Generated.MoveSessionError do
  @moduledoc """
  Provides struct and type for a MoveSessionError
  """

  @type t :: %__MODULE__{data: OpenCode.Generated.MoveSessionErrorData.t(), name: String.t()}

  defstruct [:data, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: {OpenCode.Generated.MoveSessionErrorData, :t}, name: {:const, "MoveSessionError"}]
  end
end
