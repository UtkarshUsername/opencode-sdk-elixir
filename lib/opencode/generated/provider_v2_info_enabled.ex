defmodule OpenCode.Generated.ProviderV2InfoEnabled do
  @moduledoc """
  Provides struct and types for a ProviderV2InfoEnabled
  """

  @type t :: %__MODULE__{credential_id: String.t(), data: map, name: String.t(), via: String.t()}

  defstruct [:credential_id, :data, :name, :via]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      credential_id: :string,
      data: :map,
      name: :string,
      via: {:enum, ["credential", "custom", "env"]}
    ]
  end
end
