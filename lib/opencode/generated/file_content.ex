defmodule OpenCode.Generated.FileContent do
  @moduledoc """
  Provides struct and type for a FileContent
  """

  @type t :: %__MODULE__{
          content: String.t(),
          diff: String.t() | nil,
          encoding: String.t() | nil,
          mime_type: String.t() | nil,
          patch: OpenCode.Generated.FileContentPatch.t() | nil,
          type: String.t()
        }

  defstruct [:content, :diff, :encoding, :mime_type, :patch, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      content: :string,
      diff: :string,
      encoding: {:const, "base64"},
      mime_type: :string,
      patch: {OpenCode.Generated.FileContentPatch, :t},
      type: {:enum, ["text", "binary"]}
    ]
  end
end
