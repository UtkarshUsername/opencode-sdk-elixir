defmodule OpenCode.Generated.AssistantMessage do
  @moduledoc """
  Provides struct and type for a AssistantMessage
  """

  @type t :: %__MODULE__{
          agent: String.t(),
          cost: number,
          error:
            OpenCode.Generated.APIError.t()
            | OpenCode.Generated.ContextOverflowError.t()
            | OpenCode.Generated.MessageAbortedError.t()
            | OpenCode.Generated.MessageOutputLengthError.t()
            | OpenCode.Generated.ProviderAuthError.t()
            | OpenCode.Generated.UnknownError.t()
            | nil,
          finish: String.t() | nil,
          id: String.t(),
          mode: String.t(),
          model_id: String.t(),
          parent_id: String.t(),
          path: OpenCode.Generated.AssistantMessagePath.t(),
          provider_id: String.t(),
          role: String.t(),
          session_id: String.t(),
          summary: boolean | nil,
          time: OpenCode.Generated.AssistantMessageTime.t(),
          tokens: OpenCode.Generated.AssistantMessageTokens.t(),
          variant: String.t() | nil
        }

  defstruct [
    :agent,
    :cost,
    :error,
    :finish,
    :id,
    :mode,
    :model_id,
    :parent_id,
    :path,
    :provider_id,
    :role,
    :session_id,
    :summary,
    :time,
    :tokens,
    :variant
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      agent: :string,
      cost: :number,
      error:
        {:union,
         [
           {OpenCode.Generated.APIError, :t},
           {OpenCode.Generated.ContextOverflowError, :t},
           {OpenCode.Generated.MessageAbortedError, :t},
           {OpenCode.Generated.MessageOutputLengthError, :t},
           {OpenCode.Generated.ProviderAuthError, :t},
           {OpenCode.Generated.UnknownError, :t}
         ]},
      finish: :string,
      id: :string,
      mode: :string,
      model_id: :string,
      parent_id: :string,
      path: {OpenCode.Generated.AssistantMessagePath, :t},
      provider_id: :string,
      role: {:const, "assistant"},
      session_id: :string,
      summary: :boolean,
      time: {OpenCode.Generated.AssistantMessageTime, :t},
      tokens: {OpenCode.Generated.AssistantMessageTokens, :t},
      variant: :string
    ]
  end
end
