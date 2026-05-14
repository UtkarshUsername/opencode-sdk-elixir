defmodule OpenCode.Generated.WorktreeError do
  @moduledoc """
  Provides struct and type for a WorktreeError
  """

  @type t :: %__MODULE__{data: OpenCode.Generated.WorktreeErrorData.t(), name: String.t()}

  defstruct [:data, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: {OpenCode.Generated.WorktreeErrorData, :t},
      name:
        {:enum,
         [
           "WorktreeNotGitError",
           "WorktreeNameGenerationFailedError",
           "WorktreeCreateFailedError",
           "WorktreeStartCommandFailedError",
           "WorktreeRemoveFailedError",
           "WorktreeResetFailedError",
           "WorktreeListFailedError"
         ]}
    ]
  end
end
