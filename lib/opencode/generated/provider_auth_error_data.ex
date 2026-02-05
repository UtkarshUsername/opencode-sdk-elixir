defmodule OpenCode.Generated.ProviderAuthErrorData do
  @moduledoc """
  Provides struct and type for a ProviderAuthErrorData
  """

  @type t :: %__MODULE__{message: String.t(), provider_id: String.t()}

  defstruct [:message, :provider_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message: :string, provider_id: :string]
  end
end
