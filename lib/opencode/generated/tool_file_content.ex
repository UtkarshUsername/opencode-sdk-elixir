defmodule OpenCode.Generated.ToolFileContent do
  @moduledoc """
  Provides struct and type for a ToolFileContent
  """

  @type t :: %__MODULE__{
          mime: String.t(),
          name: String.t() | nil,
          type: String.t(),
          uri: String.t()
        }

  defstruct [:mime, :name, :type, :uri]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [mime: :string, name: :string, type: {:const, "file"}, uri: :string]
  end
end
