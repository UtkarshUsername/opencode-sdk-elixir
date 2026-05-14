defmodule OpenCode.Generated.ProviderAuthError1Data do
  @moduledoc """
  Provides struct and type for a ProviderAuthError1Data
  """

  @type t :: %__MODULE__{
          field: String.t() | nil,
          kind: String.t() | nil,
          message: String.t() | nil,
          provider_id: String.t() | nil
        }

  defstruct [:field, :kind, :message, :provider_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [field: :string, kind: :string, message: :string, provider_id: :string]
  end
end
