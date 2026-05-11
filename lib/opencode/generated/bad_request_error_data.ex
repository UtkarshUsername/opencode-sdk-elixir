defmodule OpenCode.Generated.BadRequestErrorData do
  @moduledoc """
  Provides struct and type for a BadRequestErrorData
  """

  @type t :: %__MODULE__{kind: String.t() | nil, message: String.t()}

  defstruct [:kind, :message]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [kind: {:enum, ["Params", "Headers", "Query", "Body", "Payload"]}, message: :string]
  end
end
