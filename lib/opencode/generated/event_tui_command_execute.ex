defmodule OpenCode.Generated.EventTuiCommandExecute do
  @moduledoc """
  Provides struct and types for a EventTuiCommandExecute
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventTuiCommandExecuteProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventTuiCommandExecuteProperties, :t},
      type: {:const, "tui.command.execute"}
    ]
  end
end
