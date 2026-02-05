defmodule OpenCode.Generated.ConfigTui do
  @moduledoc """
  Provides struct and type for a ConfigTui
  """

  @type t :: %__MODULE__{
          diff_style: String.t() | nil,
          scroll_acceleration: OpenCode.Generated.ConfigTuiScrollAcceleration.t() | nil,
          scroll_speed: number | nil
        }

  defstruct [:diff_style, :scroll_acceleration, :scroll_speed]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      diff_style: {:enum, ["auto", "stacked"]},
      scroll_acceleration: {OpenCode.Generated.ConfigTuiScrollAcceleration, :t},
      scroll_speed: :number
    ]
  end
end
