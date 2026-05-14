defmodule OpenCode.Generated.ModelV2InfoVariants do
  @moduledoc """
  Provides struct and type for a ModelV2InfoVariants
  """

  @type t :: %__MODULE__{
          aisdk: OpenCode.Generated.ModelV2InfoVariantsAisdk.t(),
          body: map,
          headers: map,
          id: String.t()
        }

  defstruct [:aisdk, :body, :headers, :id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      aisdk: {OpenCode.Generated.ModelV2InfoVariantsAisdk, :t},
      body: :map,
      headers: :map,
      id: :string
    ]
  end
end
