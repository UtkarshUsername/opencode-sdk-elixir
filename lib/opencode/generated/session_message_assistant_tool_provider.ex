defmodule OpenCode.Generated.SessionMessageAssistantToolProvider do
  @moduledoc """
  Provides struct and type for a SessionMessageAssistantToolProvider
  """

  @type t :: %__MODULE__{executed: boolean, metadata: map | nil, result_metadata: map | nil}

  defstruct [:executed, :metadata, :result_metadata]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [executed: :boolean, metadata: :map, result_metadata: :map]
  end
end
