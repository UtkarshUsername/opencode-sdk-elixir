defmodule OpenCode.Generated.ProjectNotFoundError do
  @moduledoc """
  Provides struct and type for a ProjectNotFoundError
  """

  @type t :: %__MODULE__{message: String.t(), project_id: String.t(), tag: String.t()}

  defstruct [:message, :project_id, :tag]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message: :string, project_id: :string, tag: {:const, "ProjectNotFoundError"}]
  end
end
