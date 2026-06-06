defmodule OpenCode.Generated.ModelV2Info1Variants do
  @moduledoc """
  Provides struct and type for a ModelV2Info1Variants
  """

  @type t :: %__MODULE__{
          body: map,
          generation: OpenCode.Generated.ModelV2Info1VariantsGeneration.t() | nil,
          headers: map,
          id: String.t(),
          options: map | nil
        }

  defstruct [:body, :generation, :headers, :id, :options]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      body: :map,
      generation: {OpenCode.Generated.ModelV2Info1VariantsGeneration, :t},
      headers: :map,
      id: :string,
      options: :map
    ]
  end
end
