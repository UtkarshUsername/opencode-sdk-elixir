defmodule OpenCode.Generated.ProjectCopyErrorData do
  @moduledoc """
  Provides struct and type for a ProjectCopyErrorData
  """

  @type t :: %__MODULE__{force_required: boolean | nil, message: String.t()}

  defstruct [:force_required, :message]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [force_required: :boolean, message: :string]
  end
end
