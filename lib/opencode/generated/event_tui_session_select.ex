defmodule OpenCode.Generated.EventTuiSessionSelect do
  @moduledoc """
  Provides struct and types for a EventTuiSessionSelect
  """

  @type t :: %__MODULE__{
          id: String.t(),
          properties: OpenCode.Generated.EventTuiSessionSelectProperties.t(),
          type: String.t()
        }

  defstruct [:id, :properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      properties: {OpenCode.Generated.EventTuiSessionSelectProperties, :t},
      type: {:const, "tui.session.select"}
    ]
  end
end
