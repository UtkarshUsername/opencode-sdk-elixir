defmodule OpenCode.Generated.SessionMessageAssistant do
  @moduledoc """
  Provides struct and type for a SessionMessageAssistant
  """

  @type t :: %__MODULE__{
          agent: String.t(),
          content: [
            OpenCode.Generated.SessionMessageAssistantReasoning.t()
            | OpenCode.Generated.SessionMessageAssistantText.t()
            | OpenCode.Generated.SessionMessageAssistantTool.t()
          ],
          cost: number | nil,
          error: OpenCode.Generated.SessionErrorUnknown.t() | nil,
          finish: String.t() | nil,
          id: String.t(),
          metadata: map | nil,
          model: OpenCode.Generated.SessionMessageAssistantModel.t(),
          snapshot: OpenCode.Generated.SessionMessageAssistantSnapshot.t() | nil,
          time: OpenCode.Generated.SessionMessageAssistantTime.t(),
          tokens: OpenCode.Generated.SessionMessageAssistantTokens.t() | nil,
          type: String.t()
        }

  defstruct [
    :agent,
    :content,
    :cost,
    :error,
    :finish,
    :id,
    :metadata,
    :model,
    :snapshot,
    :time,
    :tokens,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      agent: :string,
      content: [
        union: [
          {OpenCode.Generated.SessionMessageAssistantReasoning, :t},
          {OpenCode.Generated.SessionMessageAssistantText, :t},
          {OpenCode.Generated.SessionMessageAssistantTool, :t}
        ]
      ],
      cost: :number,
      error: {OpenCode.Generated.SessionErrorUnknown, :t},
      finish: :string,
      id: :string,
      metadata: :map,
      model: {OpenCode.Generated.SessionMessageAssistantModel, :t},
      snapshot: {OpenCode.Generated.SessionMessageAssistantSnapshot, :t},
      time: {OpenCode.Generated.SessionMessageAssistantTime, :t},
      tokens: {OpenCode.Generated.SessionMessageAssistantTokens, :t},
      type: {:const, "assistant"}
    ]
  end
end
