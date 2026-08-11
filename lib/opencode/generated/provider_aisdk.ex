defmodule OpenCode.Generated.ProviderAISDK do
  @moduledoc """
  Provides struct and type for a ProviderAISDK
  """

  @type t :: %__MODULE__{
          package: String.t(),
          settings: map | nil,
          type: String.t(),
          url: String.t() | nil
        }

  defstruct [:package, :settings, :type, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [package: :string, settings: :map, type: {:const, "aisdk"}, url: :string]
  end
end
