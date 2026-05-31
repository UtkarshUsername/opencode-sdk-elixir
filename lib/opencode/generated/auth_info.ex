defmodule OpenCode.Generated.AuthInfo do
  @moduledoc """
  Provides struct and type for a AuthInfo
  """

  @type t :: %__MODULE__{
          credential:
            OpenCode.Generated.AuthApiKeyCredential.t()
            | OpenCode.Generated.AuthOAuthCredential.t(),
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
           {OpenCode.Generated.AuthApiKeyCredential, :t},
           {OpenCode.Generated.AuthOAuthCredential, :t}
         ]},
      description: :string,
      id: :string,
      service_id: :string
    ]
  end
end
