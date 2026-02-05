defmodule OpenCode.Generated.EventTuiPromptAppend do
  @moduledoc """
  Provides struct and type for a EventTuiPromptAppend
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventTuiPromptAppendProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventTuiPromptAppendProperties, :t},
      type: {:const, "tui.prompt.append"}
    ]
  end
end
