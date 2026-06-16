defmodule OpenCode.Generated.IntegrationSelectPromptOptions do
  @moduledoc """
  Provides struct and type for a IntegrationSelectPromptOptions
  """

  @type t :: %__MODULE__{hint: String.t() | nil, label: String.t(), value: String.t()}

  defstruct [:hint, :label, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [hint: :string, label: :string, value: :string]
  end
end
