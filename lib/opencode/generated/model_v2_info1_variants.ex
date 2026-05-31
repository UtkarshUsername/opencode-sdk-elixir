defmodule OpenCode.Generated.ModelV2Info1Variants do
  @moduledoc """
  Provides struct and type for a ModelV2Info1Variants
  """

  @type t :: %__MODULE__{
          aisdk: OpenCode.Generated.ModelV2Info1VariantsAisdk.t(),
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
      aisdk: {OpenCode.Generated.ModelV2Info1VariantsAisdk, :t},
      body: :map,
      headers: :map,
      id: :string
    ]
  end
end
