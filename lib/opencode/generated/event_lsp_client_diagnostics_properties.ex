defmodule OpenCode.Generated.EventLspClientDiagnosticsProperties do
  @moduledoc """
  Provides struct and type for a EventLspClientDiagnosticsProperties
  """

  @type t :: %__MODULE__{path: String.t(), server_id: String.t()}

  defstruct [:path, :server_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [path: :string, server_id: :string]
  end
end
