defmodule OpenCode.Generated.EventQuestionRejectedProperties do
  @moduledoc """
  Provides struct and type for a EventQuestionRejectedProperties
  """

  @type t :: %__MODULE__{request_id: String.t(), session_id: String.t()}

  defstruct [:request_id, :session_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [request_id: :string, session_id: :string]
  end
end
