defmodule OpenCode.Generated.EventCredentialRemovedProperties do
  @moduledoc """
  Provides struct and type for a EventCredentialRemovedProperties
  """

  @type t :: %__MODULE__{credential: OpenCode.Generated.CredentialInfo.t()}

  defstruct [:credential]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [credential: {OpenCode.Generated.CredentialInfo, :t}]
  end
end
