defmodule OpenCode.Generated.EventWorkspaceRestoreProperties do
  @moduledoc """
  Provides struct and type for a EventWorkspaceRestoreProperties
  """

  @type t :: %__MODULE__{
          session_id: String.t(),
          step: integer,
          total: integer,
          workspace_id: String.t()
        }

  defstruct [:session_id, :step, :total, :workspace_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [session_id: :string, step: :integer, total: :integer, workspace_id: :string]
  end
end
