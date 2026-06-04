defmodule OpenCode.Generated.FileSystemTextContent do
  @moduledoc """
  Provides struct and type for a FileSystemTextContent
  """

  @type t :: %__MODULE__{content: String.t(), mime: String.t(), type: String.t()}

  defstruct [:content, :mime, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [content: :string, mime: :string, type: {:const, "text"}]
  end
end
