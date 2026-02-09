defmodule OpenCode.Generated.ContextOverflowErrorData do
  @moduledoc """
  Provides struct and type for a ContextOverflowErrorData
  """

  @type t :: %__MODULE__{message: String.t(), response_body: String.t() | nil}

  defstruct [:message, :response_body]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message: :string, response_body: :string]
  end
end
