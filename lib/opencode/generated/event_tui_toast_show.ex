defmodule OpenCode.Generated.EventTuiToastShow do
  @moduledoc """
  Provides struct and type for a EventTuiToastShow
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventTuiToastShowProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventTuiToastShowProperties, :t},
      type: {:const, "tui.toast.show"}
    ]
  end
end
