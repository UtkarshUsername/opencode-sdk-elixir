defmodule OpenCode.Generated.McpOAuthConfig do
  @moduledoc """
  Provides struct and type for a McpOAuthConfig
  """

  @type t :: %__MODULE__{
          client_id: String.t() | nil,
          client_secret: String.t() | nil,
          redirect_uri: String.t() | nil,
          scope: String.t() | nil
        }

  defstruct [:client_id, :client_secret, :redirect_uri, :scope]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [client_id: :string, client_secret: :string, redirect_uri: :string, scope: :string]
  end
end
