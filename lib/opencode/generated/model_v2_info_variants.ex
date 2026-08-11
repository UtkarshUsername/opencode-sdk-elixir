defmodule OpenCode.Generated.ModelV2InfoVariants do
  @moduledoc """
  Provides struct and type for a ModelV2InfoVariants
  """

  @type t :: %__MODULE__{body: map, headers: map, id: String.t()}

  defstruct [:body, :headers, :id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [body: :map, headers: :map, id: :string]
  end
end
