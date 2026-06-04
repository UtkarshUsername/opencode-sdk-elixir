defmodule OpenCode.Generated.SessionMessageToolStateCompleted do
  @moduledoc """
  Provides struct and type for a SessionMessageToolStateCompleted
  """

  @type t :: %__MODULE__{
          attachments: [OpenCode.Generated.PromptFileAttachment.t()] | nil,
          content: [
            OpenCode.Generated.ToolFileContent.t() | OpenCode.Generated.ToolTextContent.t()
          ],
          input: map,
          result: map | nil,
          status: String.t(),
          structured: map
        }

  defstruct [:attachments, :content, :input, :result, :status, :structured]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      attachments: [{OpenCode.Generated.PromptFileAttachment, :t}],
      content: [
        union: [
          {OpenCode.Generated.ToolFileContent, :t},
          {OpenCode.Generated.ToolTextContent, :t}
        ]
      ],
      input: :map,
      result: :map,
      status: {:const, "completed"},
      structured: :map
    ]
  end
end
