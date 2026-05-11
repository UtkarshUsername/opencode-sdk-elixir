defmodule OpenCode.Generated.PromptReferenceAttachment do
  @moduledoc """
  Provides struct and type for a PromptReferenceAttachment
  """

  @type t :: %__MODULE__{
          branch: String.t() | nil,
          kind: String.t(),
          name: String.t(),
          problem: String.t() | nil,
          repository: String.t() | nil,
          source: OpenCode.Generated.PromptSource.t() | nil,
          target: String.t() | nil,
          target_uri: String.t() | nil,
          uri: String.t() | nil
        }

  defstruct [:branch, :kind, :name, :problem, :repository, :source, :target, :target_uri, :uri]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      branch: :string,
      kind: {:enum, ["local", "git", "invalid"]},
      name: :string,
      problem: :string,
      repository: :string,
      source: {OpenCode.Generated.PromptSource, :t},
      target: :string,
      target_uri: :string,
      uri: :string
    ]
  end
end
