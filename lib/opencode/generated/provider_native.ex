defmodule OpenCode.Generated.ProviderNative do
  @moduledoc """
  Provides struct and type for a ProviderNative
  """

  @type t :: %__MODULE__{settings: map, type: String.t(), url: String.t() | nil}

  defstruct [:settings, :type, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [settings: :map, type: {:const, "native"}, url: :string]
  end
end
