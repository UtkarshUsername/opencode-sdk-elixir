defmodule OpenCode.Generated.FileSystemContent do
  @moduledoc """
  Provides struct and type for a FileSystemContent
  """

  @type t :: %__MODULE__{
          content: String.t(),
          encoding: String.t(),
          mime: String.t(),
          name: String.t() | nil,
          uri: String.t()
        }

  defstruct [:content, :encoding, :mime, :name, :uri]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      content: :string,
      encoding: {:enum, ["utf8", "base64"]},
      mime: :string,
      name: :string,
      uri: :string
    ]
  end
end
