defmodule OpenCode.Generated.PromptAgentAttachment do
  @moduledoc """
  Provides struct and type for a PromptAgentAttachment
  """

  @type t :: %__MODULE__{name: String.t(), source: OpenCode.Generated.PromptSource.t() | nil}

  defstruct [:name, :source]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [name: :string, source: {OpenCode.Generated.PromptSource, :t}]
  end
end
