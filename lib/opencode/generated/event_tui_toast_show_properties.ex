defmodule OpenCode.Generated.EventTuiToastShowProperties do
  @moduledoc """
  Provides struct and types for a EventTuiToastShowProperties
  """

  @type t :: %__MODULE__{
          duration: integer | nil,
          message: String.t(),
          title: String.t() | nil,
          variant: String.t()
        }

  defstruct [:duration, :message, :title, :variant]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      duration: :integer,
      message: :string,
      title: :string,
      variant: {:enum, ["info", "success", "warning", "error"]}
    ]
  end
end
