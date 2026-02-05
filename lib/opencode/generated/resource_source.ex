defmodule OpenCode.Generated.ResourceSource do
  @moduledoc """
  Provides struct and type for a ResourceSource
  """

  @type t :: %__MODULE__{
          client_name: String.t(),
          text: OpenCode.Generated.FilePartSourceText.t(),
          type: String.t(),
          uri: String.t()
        }

  defstruct [:client_name, :text, :type, :uri]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      client_name: :string,
      text: {OpenCode.Generated.FilePartSourceText, :t},
      type: {:const, "resource"},
      uri: :string
    ]
  end
end
