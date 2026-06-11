defmodule OpenCode.Generated.ConnectorAttemptTime do
  @moduledoc """
  Provides struct and type for a ConnectorAttemptTime
  """

  @type t :: %__MODULE__{created: number | String.t(), expires: number | String.t()}

  defstruct [:created, :expires]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      created:
        {:union,
         [
           :number,
           const: "-Infinity",
           const: "Infinity",
           const: "NaN",
           enum: ["Infinity", "-Infinity", "NaN"]
         ]},
      expires:
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
