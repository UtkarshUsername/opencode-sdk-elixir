defmodule OpenCode.Generated.ProviderNotFoundError do
  @moduledoc """
  Provides struct and type for a ProviderNotFoundError
  """

  @type t :: %__MODULE__{message: String.t(), provider_id: String.t(), tag: String.t()}

  defstruct [:message, :provider_id, :tag]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message: :string, provider_id: :string, tag: {:const, "ProviderNotFoundError"}]
  end
end
