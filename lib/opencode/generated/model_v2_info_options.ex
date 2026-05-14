defmodule OpenCode.Generated.ModelV2InfoOptions do
  @moduledoc """
  Provides struct and type for a ModelV2InfoOptions
  """

  @type t :: %__MODULE__{
          aisdk: OpenCode.Generated.ModelV2InfoOptionsAisdk.t(),
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
      aisdk: {OpenCode.Generated.ModelV2InfoOptionsAisdk, :t},
      body: :map,
      headers: :map,
      variant: :string
    ]
  end
end
