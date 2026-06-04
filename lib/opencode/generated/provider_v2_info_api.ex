defmodule OpenCode.Generated.ProviderV2InfoApi do
  @moduledoc """
  Provides struct and types for a ProviderV2InfoApi
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
    [package: :string, settings: :map, type: {:enum, ["aisdk", "native"]}, url: :string]
  end
end
