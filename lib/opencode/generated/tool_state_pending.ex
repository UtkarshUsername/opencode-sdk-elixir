defmodule OpenCode.Generated.ToolStatePending do
  @moduledoc """
  Provides struct and type for a ToolStatePending
  """

  @type t :: %__MODULE__{input: map, raw: String.t(), status: String.t()}

  defstruct [:input, :raw, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [input: :map, raw: :string, status: {:const, "pending"}]
  end
end
