defmodule OpenCode.Generated.FilePart do
  @moduledoc """
  Provides struct and type for a FilePart
  """

  @type t :: %__MODULE__{
          filename: String.t() | nil,
          id: String.t(),
          message_id: String.t(),
          mime: String.t(),
          session_id: String.t(),
          source:
            OpenCode.Generated.FileSource.t()
            | OpenCode.Generated.ResourceSource.t()
            | OpenCode.Generated.SymbolSource.t()
            | nil,
          type: String.t(),
          url: String.t()
        }

  defstruct [:filename, :id, :message_id, :mime, :session_id, :source, :type, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      filename: :string,
      id: :string,
      message_id: :string,
      mime: :string,
      session_id: :string,
      source:
        {:union,
         [
           {OpenCode.Generated.FileSource, :t},
           {OpenCode.Generated.ResourceSource, :t},
           {OpenCode.Generated.SymbolSource, :t}
         ]},
      type: {:const, "file"},
      url: :string
    ]
  end
end
