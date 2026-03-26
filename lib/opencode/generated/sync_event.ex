defmodule OpenCode.Generated.SyncEvent do
  @moduledoc """
  Provides struct and type for a SyncEvent
  """

  @type t :: %__MODULE__{payload: OpenCode.Generated.SyncEvent.t()}

  defstruct [:payload]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [payload: {OpenCode.Generated.SyncEvent, :t}]
  end
end
