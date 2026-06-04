defmodule OpenCode.Generated.ToolFileContent do
  @moduledoc """
  Provides struct and type for a ToolFileContent
  """

  @type t :: %__MODULE__{
          mime: String.t(),
          name: String.t() | nil,
          source: OpenCode.Generated.ToolFileContentSource.t(),
          type: String.t()
        }

  defstruct [:mime, :name, :source, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      mime: :string,
      name: :string,
      source: {OpenCode.Generated.ToolFileContentSource, :t},
      type: {:const, "file"}
    ]
  end
end
