defmodule OpenCode.Generated.PromptInput do
  @moduledoc """
  Provides struct and type for a PromptInput
  """

  @type t :: %__MODULE__{
          agents: [OpenCode.Generated.PromptAgentAttachment.t()] | nil,
          files: [OpenCode.Generated.PromptInputFileAttachment.t()] | nil,
          text: String.t()
        }

  defstruct [:agents, :files, :text]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      agents: [{OpenCode.Generated.PromptAgentAttachment, :t}],
      files: [{OpenCode.Generated.PromptInputFileAttachment, :t}],
      text: :string
    ]
  end
end
