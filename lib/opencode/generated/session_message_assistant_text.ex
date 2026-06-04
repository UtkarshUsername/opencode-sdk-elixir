defmodule OpenCode.Generated.SessionMessageAssistantText do
  @moduledoc """
  Provides struct and type for a SessionMessageAssistantText
  """

  @type t :: %__MODULE__{id: String.t(), text: String.t(), type: String.t()}

  defstruct [:id, :text, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [id: :string, text: :string, type: {:const, "text"}]
  end
end
