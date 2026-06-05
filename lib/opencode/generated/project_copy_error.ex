defmodule OpenCode.Generated.ProjectCopyError do
  @moduledoc """
  Provides struct and type for a ProjectCopyError
  """

  @type t :: %__MODULE__{data: OpenCode.Generated.ProjectCopyErrorData.t(), name: String.t()}

  defstruct [:data, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: {OpenCode.Generated.ProjectCopyErrorData, :t}, name: {:const, "ProjectCopyError"}]
  end
end
