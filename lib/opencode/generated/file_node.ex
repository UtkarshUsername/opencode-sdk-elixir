defmodule OpenCode.Generated.FileNode do
  @moduledoc """
  Provides struct and type for a FileNode
  """

  @type t :: %__MODULE__{
          absolute: String.t(),
          ignored: boolean,
          name: String.t(),
          path: String.t(),
          type: String.t()
        }

  defstruct [:absolute, :ignored, :name, :path, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      absolute: :string,
      ignored: :boolean,
      name: :string,
      path: :string,
      type: {:enum, ["file", "directory"]}
    ]
  end
end
