defmodule OpenCode.Generated.UnknownErrorData do
  @moduledoc """
  Provides struct and type for a UnknownErrorData
  """

  @type t :: %__MODULE__{message: String.t(), ref: String.t() | nil}

  defstruct [:message, :ref]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message: :string, ref: :string]
  end
end
