defmodule OpenCode.Generated.EventTuiSessionSelect do
  @moduledoc """
  Provides struct and type for a EventTuiSessionSelect
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventTuiSessionSelectProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventTuiSessionSelectProperties, :t},
      type: {:const, "tui.session.select"}
    ]
  end
end
