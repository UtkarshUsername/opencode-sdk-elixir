defmodule OpenCode.Generated.ProviderAuthError1 do
  @moduledoc """
  Provides struct and type for a ProviderAuthError1
  """

  @type t :: %__MODULE__{data: OpenCode.Generated.ProviderAuthError1Data.t(), name: String.t()}

  defstruct [:data, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: {OpenCode.Generated.ProviderAuthError1Data, :t},
      name:
        {:enum,
         [
           "BadRequest",
           "ProviderAuthOauthMissing",
           "ProviderAuthOauthCodeMissing",
           "ProviderAuthOauthCallbackFailed",
           "ProviderAuthValidationFailed"
         ]}
    ]
  end
end
