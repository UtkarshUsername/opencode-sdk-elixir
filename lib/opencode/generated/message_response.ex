defmodule OpenCode.Generated.MessageResponse do
  @moduledoc """
  Provides struct and type for a MessageResponse
  """

  @type t :: %__MODULE__{
          info: map | nil,
          parts: [OpenCode.Generated.Part.t()] | nil,
          text: String.t() | nil
        }

  defstruct [:info, :parts, :text]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [info: :map, parts: [{OpenCode.Generated.Part, :t}], text: :string]
  end
end
