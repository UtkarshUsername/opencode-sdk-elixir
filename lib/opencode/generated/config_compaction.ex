defmodule OpenCode.Generated.ConfigCompaction do
  @moduledoc """
  Provides struct and type for a ConfigCompaction
  """

  @type t :: %__MODULE__{auto: boolean | nil, prune: boolean | nil, reserved: integer | nil}

  defstruct [:auto, :prune, :reserved]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [auto: :boolean, prune: :boolean, reserved: :integer]
  end
end
