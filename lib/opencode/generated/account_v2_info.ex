defmodule OpenCode.Generated.AccountV2Info do
  @moduledoc """
  Provides struct and type for a AccountV2Info
  """

  @type t :: %__MODULE__{
          credential:
            OpenCode.Generated.AccountV2ApiKeyCredential.t()
            | OpenCode.Generated.AccountV2oAuthCredential.t(),
          description: String.t(),
          id: String.t(),
          service_id: String.t()
        }

  defstruct [:credential, :description, :id, :service_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      credential:
        {:union,
         [
           {OpenCode.Generated.AccountV2ApiKeyCredential, :t},
           {OpenCode.Generated.AccountV2oAuthCredential, :t}
         ]},
      description: :string,
      id: :string,
      service_id: :string
    ]
  end
end
