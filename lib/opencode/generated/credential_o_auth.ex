defmodule OpenCode.Generated.CredentialOAuth do
  @moduledoc """
  Provides struct and type for a CredentialOAuth
  """

  @type t :: %__MODULE__{
          access: String.t(),
          expires: integer,
          metadata: map | nil,
          refresh: String.t(),
          type: String.t()
        }

  defstruct [:access, :expires, :metadata, :refresh, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      access: :string,
      expires: :integer,
      metadata: :map,
      refresh: :string,
      type: {:const, "oauth"}
    ]
  end
end
