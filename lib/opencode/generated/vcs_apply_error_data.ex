defmodule OpenCode.Generated.VcsApplyErrorData do
  @moduledoc """
  Provides struct and type for a VcsApplyErrorData
  """

  @type t :: %__MODULE__{message: String.t(), reason: String.t()}

  defstruct [:message, :reason]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message: :string, reason: {:enum, ["non-git", "not-clean"]}]
  end
end
