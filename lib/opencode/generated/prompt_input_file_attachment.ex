defmodule OpenCode.Generated.PromptInputFileAttachment do
  @moduledoc """
  Provides struct and type for a PromptInputFileAttachment
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          name: String.t() | nil,
          source: OpenCode.Generated.PromptSource.t() | nil,
          uri: String.t()
        }

  defstruct [:description, :name, :source, :uri]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      description: :string,
      name: :string,
      source: {OpenCode.Generated.PromptSource, :t},
      uri: :string
    ]
  end
end
