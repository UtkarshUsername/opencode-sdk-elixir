defmodule OpenCode.Generated.EventAccountAdded do
  @moduledoc """
  Provides struct and type for a EventAccountAdded
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventAccountAddedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventAccountAddedProperties, :t},
      type: {:const, "account.added"}
    ]
  end
end
