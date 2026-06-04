defmodule OpenCode.Generated.LocationInfoProject do
  @moduledoc """
  Provides struct and type for a LocationInfoProject
  """

  @type t :: %__MODULE__{directory: String.t(), id: String.t()}

  defstruct [:directory, :id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [directory: :string, id: :string]
  end
end
