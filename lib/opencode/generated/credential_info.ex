defmodule OpenCode.Generated.CredentialInfo do
  @moduledoc """
  Provides struct and type for a CredentialInfo
  """

  @type t :: %__MODULE__{
          connector_id: String.t(),
          id: String.t(),
          label: String.t(),
          method_id: String.t(),
          value: OpenCode.Generated.CredentialKey.t() | OpenCode.Generated.CredentialOAuth.t()
        }

  defstruct [:connector_id, :id, :label, :method_id, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      connector_id: :string,
      id: :string,
      label: :string,
      method_id: :string,
      value:
        {:union,
         [{OpenCode.Generated.CredentialKey, :t}, {OpenCode.Generated.CredentialOAuth, :t}]}
    ]
  end
end
