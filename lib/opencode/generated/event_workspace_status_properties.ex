defmodule OpenCode.Generated.EventWorkspaceStatusProperties do
  @moduledoc """
  Provides struct and type for a EventWorkspaceStatusProperties
  """

  @type t :: %__MODULE__{status: String.t(), workspace_id: String.t()}

  defstruct [:status, :workspace_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [status: {:enum, ["connected", "connecting", "disconnected", "error"]}, workspace_id: :string]
  end
end
