defmodule OpenCode.Generated.SyncEventSessionNextStepStartedDataModel do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextStepStartedDataModel
  """

  @type t :: %__MODULE__{id: String.t(), provider_id: String.t(), variant: String.t()}

  defstruct [:id, :provider_id, :variant]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [id: :string, provider_id: :string, variant: :string]
  end
end
