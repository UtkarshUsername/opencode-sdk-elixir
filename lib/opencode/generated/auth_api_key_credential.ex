defmodule OpenCode.Generated.AuthApiKeyCredential do
  @moduledoc """
  Provides struct and type for a AuthApiKeyCredential
  """

  @type t :: %__MODULE__{key: String.t(), metadata: map | nil, type: String.t()}

  defstruct [:key, :metadata, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [key: :string, metadata: :map, type: {:const, "api"}]
  end
end
