defmodule OpenCode.Generated.EventCredentialAdded do
  @moduledoc """
  Provides struct and type for a EventCredentialAdded
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventCredentialAddedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventCredentialAddedProperties, :t},
      type: {:const, "credential.added"}
    ]
  end
end
