defmodule OpenCode.Generated.EventLspClientDiagnostics do
  @moduledoc """
  Provides struct and type for a EventLspClientDiagnostics
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventLspClientDiagnosticsProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventLspClientDiagnosticsProperties, :t},
      type: {:const, "lsp.client.diagnostics"}
    ]
  end
end
