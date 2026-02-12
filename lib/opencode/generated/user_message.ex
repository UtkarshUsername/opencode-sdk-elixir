defmodule OpenCode.Generated.UserMessage do
  @moduledoc """
  Provides struct and type for a UserMessage
  """

  @type t :: %__MODULE__{
          agent: String.t(),
          format:
            OpenCode.Generated.OutputFormatJsonSchema.t()
            | OpenCode.Generated.OutputFormatText.t()
            | nil,
          id: String.t(),
          model: OpenCode.Generated.UserMessageModel.t(),
          role: String.t(),
          session_id: String.t(),
          summary: OpenCode.Generated.UserMessageSummary.t() | nil,
          system: String.t() | nil,
          time: OpenCode.Generated.UserMessageTime.t(),
          tools: map | nil,
          variant: String.t() | nil
        }

  defstruct [
    :agent,
    :format,
    :id,
    :model,
    :role,
    :session_id,
    :summary,
    :system,
    :time,
    :tools,
    :variant
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      agent: :string,
      format:
        {:union,
         [
           {OpenCode.Generated.OutputFormatJsonSchema, :t},
           {OpenCode.Generated.OutputFormatText, :t}
         ]},
      id: :string,
      model: {OpenCode.Generated.UserMessageModel, :t},
      role: {:const, "user"},
      session_id: :string,
      summary: {OpenCode.Generated.UserMessageSummary, :t},
      system: :string,
      time: {OpenCode.Generated.UserMessageTime, :t},
      tools: :map,
      variant: :string
    ]
  end
end
