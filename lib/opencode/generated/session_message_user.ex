defmodule OpenCode.Generated.SessionMessageUser do
  @moduledoc """
  Provides struct and type for a SessionMessageUser
  """

  @type t :: %__MODULE__{
          agents: [OpenCode.Generated.PromptAgentAttachment.t()] | nil,
          files: [OpenCode.Generated.PromptFileAttachment.t()] | nil,
          id: String.t(),
          metadata: map | nil,
          text: String.t(),
          time: OpenCode.Generated.SessionMessageUserTime.t(),
          type: String.t()
        }

  defstruct [:agents, :files, :id, :metadata, :text, :time, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      agents: [{OpenCode.Generated.PromptAgentAttachment, :t}],
      files: [{OpenCode.Generated.PromptFileAttachment, :t}],
      id: :string,
      metadata: :map,
      text: :string,
      time: {OpenCode.Generated.SessionMessageUserTime, :t},
      type: {:const, "user"}
    ]
  end
end
