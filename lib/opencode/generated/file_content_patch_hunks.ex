defmodule OpenCode.Generated.FileContentPatchHunks do
  @moduledoc """
  Provides struct and type for a FileContentPatchHunks
  """

  @type t :: %__MODULE__{
          lines: [String.t()],
          new_lines: number,
          new_start: number,
          old_lines: number,
          old_start: number
        }

  defstruct [:lines, :new_lines, :new_start, :old_lines, :old_start]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      lines: [:string],
      new_lines: :number,
      new_start: :number,
      old_lines: :number,
      old_start: :number
    ]
  end
end
