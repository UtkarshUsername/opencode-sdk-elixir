defmodule OpenCode.Generated.SyncEventSessionNextToolCalledDataProvider do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextToolCalledDataProvider
  """

  @type t :: %__MODULE__{executed: boolean, metadata: map | nil}

  defstruct [:executed, :metadata]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [executed: :boolean, metadata: :map]
  end
end
