defmodule OpenCode.Generated.GlobalEventPayloadPropertiesIcon do
  @moduledoc """
  Provides struct and type for a GlobalEventPayloadPropertiesIcon
  """

  @type t :: %__MODULE__{
          color: String.t() | nil,
          override: String.t() | nil,
          url: String.t() | nil
        }

  defstruct [:color, :override, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [color: :string, override: :string, url: :string]
  end
end
