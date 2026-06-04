defmodule OpenCode.Generated.ToolFileContentSource do
  @moduledoc """
  Provides struct and types for a ToolFileContentSource
  """

  @type t :: %__MODULE__{data: String.t(), type: String.t(), uri: String.t(), url: String.t()}

  defstruct [:data, :type, :uri, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: :string, type: {:enum, ["data", "file", "url"]}, uri: :string, url: :string]
  end
end
