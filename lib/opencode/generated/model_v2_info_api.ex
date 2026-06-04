defmodule OpenCode.Generated.ModelV2InfoApi do
  @moduledoc """
  Provides struct and types for a ModelV2InfoApi
  """

  @type t :: %__MODULE__{
          id: String.t(),
          package: String.t(),
          settings: map | nil,
          type: String.t(),
          url: String.t() | nil
        }

  defstruct [:id, :package, :settings, :type, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      package: :string,
      settings: :map,
      type: {:enum, ["aisdk", "native"]},
      url: :string
    ]
  end
end
