defmodule OpenCode.Generated.McpServerNotFoundError do
  @moduledoc """
  Provides struct and type for a McpServerNotFoundError
  """

  @type t :: %__MODULE__{message: String.t(), name: String.t(), tag: String.t()}

  defstruct [:message, :name, :tag]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message: :string, name: :string, tag: {:const, "McpServerNotFoundError"}]
  end
end
