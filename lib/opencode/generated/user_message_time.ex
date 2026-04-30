defmodule OpenCode.Generated.UserMessageTime do
  @moduledoc """
  Provides struct and type for a UserMessageTime
  """

  @type t :: %__MODULE__{created: integer}

  defstruct [:created]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [created: :integer]
  end
end
