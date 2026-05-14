defmodule OpenCode.Generated.ModelV2InfoTime do
  @moduledoc """
  Provides struct and type for a ModelV2InfoTime
  """

  @type t :: %__MODULE__{released: number | String.t()}

  defstruct [:released]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      released:
        {:union,
         [
           :number,
           const: "-Infinity",
           const: "Infinity",
           const: "NaN",
           enum: ["Infinity", "-Infinity", "NaN"]
         ]}
    ]
  end
end
