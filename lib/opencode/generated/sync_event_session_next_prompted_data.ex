defmodule OpenCode.Generated.SyncEventSessionNextPromptedData do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextPromptedData
  """

  @type t :: %__MODULE__{
          prompt: OpenCode.Generated.Prompt.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:prompt, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [prompt: {OpenCode.Generated.Prompt, :t}, session_id: :string, timestamp: :number]
  end
end
