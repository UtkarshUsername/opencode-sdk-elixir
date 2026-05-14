defmodule OpenCode.Generated.ModelV2InfoEndpoint do
  @moduledoc """
  Provides struct and types for a ModelV2InfoEndpoint
  """

  @type t :: %__MODULE__{
          package: String.t(),
          reasoning: OpenCode.Generated.ModelV2InfoEndpointReasoning.t() | nil,
          type: String.t(),
          url: String.t() | nil,
          websocket: boolean | nil
        }

  defstruct [:package, :reasoning, :type, :url, :websocket]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      package: :string,
      reasoning: {OpenCode.Generated.ModelV2InfoEndpointReasoning, :t},
      type:
        {:enum,
         ["aisdk", "anthropic/messages", "openai/completions", "openai/responses", "unknown"]},
      url: :string,
      websocket: :boolean
    ]
  end
end
