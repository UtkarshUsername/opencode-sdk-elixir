defmodule OpenCode.Generated.MessageAbortedError do
  @moduledoc """
  Provides struct and type for a MessageAbortedError
  """

  @type t :: %__MODULE__{data: OpenCode.Generated.MessageAbortedErrorData.t(), name: String.t()}

  defstruct [:data, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: {OpenCode.Generated.MessageAbortedErrorData, :t},
      name: {:const, "MessageAbortedError"}
    ]
  end
end
