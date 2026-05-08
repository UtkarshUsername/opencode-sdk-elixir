defmodule OpenCode.Generated.EventSessionStatusPropertiesStatus do
  @moduledoc """
  Provides struct and types for a EventSessionStatusPropertiesStatus
  """

  @type t :: %__MODULE__{
          action: OpenCode.Generated.EventSessionStatusPropertiesStatusAction.t() | nil,
          attempt: integer,
          message: String.t(),
          next: integer,
          type: String.t()
        }

  defstruct [:action, :attempt, :message, :next, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      action: {OpenCode.Generated.EventSessionStatusPropertiesStatusAction, :t},
      attempt: :integer,
      message: :string,
      next: :integer,
      type: {:enum, ["busy", "idle", "retry"]}
    ]
  end
end
