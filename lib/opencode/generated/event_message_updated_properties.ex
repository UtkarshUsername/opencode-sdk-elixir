defmodule OpenCode.Generated.EventMessageUpdatedProperties do
  @moduledoc """
  Provides struct and type for a EventMessageUpdatedProperties
  """

  @type t :: %__MODULE__{
          info: OpenCode.Generated.AssistantMessage.t() | OpenCode.Generated.UserMessage.t(),
          session_id: String.t()
        }

  defstruct [:info, :session_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      info:
        {:union,
         [{OpenCode.Generated.AssistantMessage, :t}, {OpenCode.Generated.UserMessage, :t}]},
      session_id: :string
    ]
  end
end
