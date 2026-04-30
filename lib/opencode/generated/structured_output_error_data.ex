defmodule OpenCode.Generated.StructuredOutputErrorData do
  @moduledoc """
  Provides struct and type for a StructuredOutputErrorData
  """

  @type t :: %__MODULE__{message: String.t(), retries: integer}

  defstruct [:message, :retries]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message: :string, retries: :integer]
  end
end
