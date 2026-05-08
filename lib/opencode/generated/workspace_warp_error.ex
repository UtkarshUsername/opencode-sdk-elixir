defmodule OpenCode.Generated.WorkspaceWarpError do
  @moduledoc """
  Provides struct and type for a WorkspaceWarpError
  """

  @type t :: %__MODULE__{data: OpenCode.Generated.WorkspaceWarpErrorData.t(), name: String.t()}

  defstruct [:data, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: {OpenCode.Generated.WorkspaceWarpErrorData, :t}, name: {:const, "WorkspaceWarpError"}]
  end
end
