defmodule OpenCode.Generated.IntegrationWhen do
  @moduledoc """
  Provides struct and type for a IntegrationWhen
  """

  @type t :: %__MODULE__{key: String.t(), op: String.t(), value: String.t()}

  defstruct [:key, :op, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [key: :string, op: {:enum, ["eq", "neq"]}, value: :string]
  end
end
