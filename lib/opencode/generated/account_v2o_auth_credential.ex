defmodule OpenCode.Generated.AccountV2oAuthCredential do
  @moduledoc """
  Provides struct and type for a AccountV2oAuthCredential
  """

  @type t :: %__MODULE__{
          access: String.t(),
          expires: integer,
          refresh: String.t(),
          type: String.t()
        }

  defstruct [:access, :expires, :refresh, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [access: :string, expires: :integer, refresh: :string, type: {:const, "oauth"}]
  end
end
