defmodule OpenCode.Generated.EventCredentialSwitched do
  @moduledoc """
  Provides struct and type for a EventCredentialSwitched
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventCredentialSwitchedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventCredentialSwitchedProperties, :t},
      type: {:const, "credential.switched"}
    ]
  end
end
