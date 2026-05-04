defmodule OpenCode.Generated.EventTuiPromptAppend do
  @moduledoc """
  Provides struct and types for a EventTuiPromptAppend
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventTuiPromptAppendProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventTuiPromptAppendProperties, :t},
      type: {:const, "tui.prompt.append"}
    ]
  end
end
