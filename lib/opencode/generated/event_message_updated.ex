defmodule OpenCode.Generated.EventMessageUpdated do
  @moduledoc """
  Provides struct and type for a EventMessageUpdated
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventMessageUpdatedProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventMessageUpdatedProperties, :t},
      type: {:const, "message.updated"}
    ]
  end
end
