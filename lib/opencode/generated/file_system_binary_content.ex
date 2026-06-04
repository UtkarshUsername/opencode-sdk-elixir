defmodule OpenCode.Generated.FileSystemBinaryContent do
  @moduledoc """
  Provides struct and type for a FileSystemBinaryContent
  """

  @type t :: %__MODULE__{
          content: String.t(),
          encoding: String.t(),
          mime: String.t(),
          type: String.t()
        }

  defstruct [:content, :encoding, :mime, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [content: :string, encoding: {:const, "base64"}, mime: :string, type: {:const, "binary"}]
  end
end
