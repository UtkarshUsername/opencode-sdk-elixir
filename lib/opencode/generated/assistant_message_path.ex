defmodule OpenCode.Generated.AssistantMessagePath do
  @moduledoc """
  Provides struct and type for a AssistantMessagePath
  """

  @type t :: %__MODULE__{cwd: String.t(), root: String.t()}

  defstruct [:cwd, :root]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [cwd: :string, root: :string]
  end
end
