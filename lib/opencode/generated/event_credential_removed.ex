defmodule OpenCode.Generated.EventCredentialRemoved do
  @moduledoc """
  Provides struct and type for a EventCredentialRemoved
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventCredentialRemovedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventCredentialRemovedProperties, :t},
      type: {:const, "credential.removed"}
    ]
  end
end
