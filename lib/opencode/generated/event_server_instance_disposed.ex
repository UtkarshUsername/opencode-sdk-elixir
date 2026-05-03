defmodule OpenCode.Generated.EventServerInstanceDisposed do
  @moduledoc """
  Provides struct and type for a EventServerInstanceDisposed
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventServerInstanceDisposedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventServerInstanceDisposedProperties, :t},
      type: {:const, "server.instance.disposed"}
    ]
  end
end
