defmodule OpenCode.Generated.ModelV2Info1Options do
  @moduledoc """
  Provides struct and type for a ModelV2Info1Options
  """

  @type t :: %__MODULE__{
          aisdk: OpenCode.Generated.ModelV2Info1OptionsAisdk.t(),
          body: map,
          headers: map,
          variant: String.t() | nil
        }

  defstruct [:aisdk, :body, :headers, :variant]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      aisdk: {OpenCode.Generated.ModelV2Info1OptionsAisdk, :t},
      body: :map,
      headers: :map,
      variant: :string
    ]
  end
end
