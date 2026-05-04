defmodule OpenCode.Generated.LSPStatus do
  @moduledoc """
  Provides struct and type for a LSPStatus
  """

  @type t :: %__MODULE__{id: String.t(), name: String.t(), root: String.t(), status: String.t()}

  defstruct [:id, :name, :root, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [id: :string, name: :string, root: :string, status: {:enum, ["connected", "error"]}]
  end
end
