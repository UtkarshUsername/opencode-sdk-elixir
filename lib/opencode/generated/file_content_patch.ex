defmodule OpenCode.Generated.FileContentPatch do
  @moduledoc """
  Provides struct and type for a FileContentPatch
  """

  @type t :: %__MODULE__{
          hunks: [OpenCode.Generated.FileContentPatchHunks.t()],
          index: String.t() | nil,
          new_file_name: String.t(),
          new_header: String.t() | nil,
          old_file_name: String.t(),
          old_header: String.t() | nil
        }

  defstruct [:hunks, :index, :new_file_name, :new_header, :old_file_name, :old_header]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      hunks: [{OpenCode.Generated.FileContentPatchHunks, :t}],
      index: :string,
      new_file_name: :string,
      new_header: :string,
      old_file_name: :string,
      old_header: :string
    ]
  end
end
