defmodule OpenCode.Generated.EventSessionStatusPropertiesStatusAction do
  @moduledoc """
  Provides struct and type for a EventSessionStatusPropertiesStatusAction
  """

  @type t :: %__MODULE__{
          label: String.t(),
          link: String.t() | nil,
          message: String.t(),
          title: String.t()
        }

  defstruct [:label, :link, :message, :title]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [label: :string, link: :string, message: :string, title: :string]
  end
end
