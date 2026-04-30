defmodule OpenCode.Generated.OAuth do
  @moduledoc """
  Provides struct and type for a OAuth
  """

  @type t :: %__MODULE__{
          access: String.t(),
          account_id: String.t() | nil,
          enterprise_url: String.t() | nil,
          expires: integer,
          refresh: String.t(),
          type: String.t()
        }

  defstruct [:access, :account_id, :enterprise_url, :expires, :refresh, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      access: :string,
      account_id: :string,
      enterprise_url: :string,
      expires: :integer,
      refresh: :string,
      type: {:const, "oauth"}
    ]
  end
end
