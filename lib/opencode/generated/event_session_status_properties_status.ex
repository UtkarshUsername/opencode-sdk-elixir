defmodule OpenCode.Generated.EventSessionStatusPropertiesStatus do
  @moduledoc """
  Provides struct and types for a EventSessionStatusPropertiesStatus
  """

  @type t :: %__MODULE__{attempt: integer, message: String.t(), next: integer, type: String.t()}

  defstruct [:attempt, :message, :next, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      attempt: :integer,
      message: :string,
      next: :integer,
      type: {:enum, ["busy", "idle", "retry"]}
    ]
  end
end
