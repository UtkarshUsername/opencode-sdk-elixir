defmodule OpenCode.Generated.ModelV2Info1Request do
  @moduledoc """
  Provides struct and type for a ModelV2Info1Request
  """

  @type t :: %__MODULE__{
          body: map,
          generation: OpenCode.Generated.ModelV2Info1RequestGeneration.t() | nil,
          headers: map,
          options: map | nil,
          variant: String.t() | nil
        }

  defstruct [:body, :generation, :headers, :options, :variant]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      body: :map,
      generation: {OpenCode.Generated.ModelV2Info1RequestGeneration, :t},
      headers: :map,
      options: :map,
      variant: :string
    ]
  end
end
