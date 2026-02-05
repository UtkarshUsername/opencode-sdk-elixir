defmodule OpenCode.Generated.EventFileEditedProperties do
  @moduledoc """
  Provides struct and type for a EventFileEditedProperties
  """

  @type t :: %__MODULE__{file: String.t()}

  defstruct [:file]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [file: :string]
  end
end
