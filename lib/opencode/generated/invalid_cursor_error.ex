defmodule OpenCode.Generated.InvalidCursorError do
  @moduledoc """
  Provides struct and type for a InvalidCursorError
  """

  @type t :: %__MODULE__{message: String.t(), tag: String.t()}

  defstruct [:message, :tag]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message: :string, tag: {:const, "InvalidCursorError"}]
  end
end
