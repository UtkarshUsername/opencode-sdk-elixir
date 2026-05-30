defmodule OpenCode.Generated.WorkspaceCreateError do
  @moduledoc """
  Provides struct and type for a WorkspaceCreateError
  """

  @type t :: %__MODULE__{data: OpenCode.Generated.WorkspaceCreateErrorData.t(), name: String.t()}

  defstruct [:data, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: {OpenCode.Generated.WorkspaceCreateErrorData, :t},
      name: {:const, "WorkspaceCreateError"}
    ]
  end
end
