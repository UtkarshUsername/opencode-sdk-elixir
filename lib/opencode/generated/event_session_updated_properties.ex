defmodule OpenCode.Generated.EventSessionUpdatedProperties do
  @moduledoc """
  Provides struct and type for a EventSessionUpdatedProperties
  """

  @type t :: %__MODULE__{info: OpenCode.Generated.Session.t(), session_id: String.t()}

  defstruct [:info, :session_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [info: {OpenCode.Generated.Session, :t}, session_id: :string]
  end
end
