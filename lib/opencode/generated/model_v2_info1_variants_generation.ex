defmodule OpenCode.Generated.ModelV2Info1VariantsGeneration do
  @moduledoc """
  Provides struct and type for a ModelV2Info1VariantsGeneration
  """

  @type t :: %__MODULE__{
          frequency_penalty: number | String.t() | nil,
          max_tokens: number | String.t() | nil,
          presence_penalty: number | String.t() | nil,
          seed: number | String.t() | nil,
          stop: [String.t()] | nil,
          temperature: number | String.t() | nil,
          top_k: number | String.t() | nil,
          top_p: number | String.t() | nil
        }

  defstruct [
    :frequency_penalty,
    :max_tokens,
    :presence_penalty,
    :seed,
    :stop,
    :temperature,
    :top_k,
    :top_p
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      frequency_penalty: {:union, [:number, const: "-Infinity", const: "Infinity", const: "NaN"]},
      max_tokens: {:union, [:number, const: "-Infinity", const: "Infinity", const: "NaN"]},
      presence_penalty: {:union, [:number, const: "-Infinity", const: "Infinity", const: "NaN"]},
      seed: {:union, [:number, const: "-Infinity", const: "Infinity", const: "NaN"]},
      stop: [:string],
      temperature: {:union, [:number, const: "-Infinity", const: "Infinity", const: "NaN"]},
      top_k: {:union, [:number, const: "-Infinity", const: "Infinity", const: "NaN"]},
      top_p: {:union, [:number, const: "-Infinity", const: "Infinity", const: "NaN"]}
    ]
  end
end
