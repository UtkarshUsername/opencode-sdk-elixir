defmodule OpenCode.Generated.Part do
  @moduledoc """
  Provides struct and type for a Part
  """

  @type t :: %__MODULE__{text: String.t() | nil, type: String.t() | nil}

  defstruct [:text, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [text: :string, type: :string]
  end
end
