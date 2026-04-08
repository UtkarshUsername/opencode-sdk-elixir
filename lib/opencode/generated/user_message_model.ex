defmodule OpenCode.Generated.UserMessageModel do
  @moduledoc """
  Provides struct and type for a UserMessageModel
  """

  @type t :: %__MODULE__{model_id: String.t(), provider_id: String.t(), variant: String.t() | nil}

  defstruct [:model_id, :provider_id, :variant]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [model_id: :string, provider_id: :string, variant: :string]
  end
end
