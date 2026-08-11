defmodule OpenCode.Generated.FileWatcherUpdatedData do
  @moduledoc """
  Provides struct and type for a FileWatcherUpdatedData
  """

  @type t :: %__MODULE__{event: String.t(), file: String.t()}

  defstruct [:event, :file]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [event: {:enum, ["add", "change", "unlink"]}, file: :string]
  end
end
