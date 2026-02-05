defmodule OpenCode.Generated.EventSessionDiffProperties do
  @moduledoc """
  Provides struct and type for a EventSessionDiffProperties
  """

  @type t :: %__MODULE__{diff: [OpenCode.Generated.FileDiff.t()], session_id: String.t()}

  defstruct [:diff, :session_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [diff: [{OpenCode.Generated.FileDiff, :t}], session_id: :string]
  end
end
