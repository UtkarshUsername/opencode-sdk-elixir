defmodule OpenCode.Generated.FileSource do
  @moduledoc """
  Provides struct and type for a FileSource
  """

  @type t :: %__MODULE__{
          path: String.t(),
          text: OpenCode.Generated.FilePartSourceText.t(),
          type: String.t()
        }

  defstruct [:path, :text, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [path: :string, text: {OpenCode.Generated.FilePartSourceText, :t}, type: {:const, "file"}]
  end
end
