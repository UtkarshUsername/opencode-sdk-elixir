defmodule OpenCode.Generated.UnknownError1 do
  @moduledoc """
  Provides struct and type for a UnknownError1
  """

  @type t :: %__MODULE__{message: String.t(), ref: String.t() | nil, tag: String.t()}

  defstruct [:message, :ref, :tag]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message: :string, ref: :string, tag: {:const, "UnknownError"}]
  end
end
