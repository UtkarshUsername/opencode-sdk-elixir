defmodule OpenCode.Generated.PromptFileAttachment do
  @moduledoc """
  Provides struct and type for a PromptFileAttachment
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          mime: String.t(),
          name: String.t() | nil,
          source: OpenCode.Generated.PromptSource.t() | nil,
          uri: String.t()
        }

  defstruct [:description, :mime, :name, :source, :uri]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      description: :string,
      mime: :string,
      name: :string,
      source: {OpenCode.Generated.PromptSource, :t},
      uri: :string
    ]
  end
end
