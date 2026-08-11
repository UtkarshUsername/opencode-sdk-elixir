defmodule OpenCode.Generated.PtyTicketConnectToken do
  @moduledoc """
  Provides struct and type for a PtyTicketConnectToken
  """

  @type t :: %__MODULE__{expires_in: integer, ticket: String.t()}

  defstruct [:expires_in, :ticket]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [expires_in: :integer, ticket: :string]
  end
end
