defmodule OpenCode.Generated.EventSessionNextToolSuccessProperties do
  @moduledoc """
  Provides struct and type for a EventSessionNextToolSuccessProperties
  """

  @type t :: %__MODULE__{
          assistant_message_id: String.t(),
          call_id: String.t(),
          content: [
            OpenCode.Generated.ToolFileContent.t() | OpenCode.Generated.ToolTextContent.t()
          ],
          provider: OpenCode.Generated.EventSessionNextToolSuccessPropertiesProvider.t(),
          result: map | nil,
          session_id: String.t(),
          structured: map,
          timestamp: number
        }

  defstruct [
    :assistant_message_id,
    :call_id,
    :content,
    :provider,
    :result,
    :session_id,
    :structured,
    :timestamp
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      assistant_message_id: :string,
      call_id: :string,
      content: [
        union: [
          {OpenCode.Generated.ToolFileContent, :t},
          {OpenCode.Generated.ToolTextContent, :t}
        ]
      ],
      provider: {OpenCode.Generated.EventSessionNextToolSuccessPropertiesProvider, :t},
      result: :map,
      session_id: :string,
      structured: :map,
      timestamp: :number
    ]
  end
end
