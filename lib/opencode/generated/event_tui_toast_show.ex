defmodule OpenCode.Generated.EventTuiToastShow do
  @moduledoc """
  Provides struct and types for a EventTuiToastShow
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventTuiToastShowProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventTuiToastShowProperties, :t},
      type: {:const, "tui.toast.show"}
    ]
  end
end
