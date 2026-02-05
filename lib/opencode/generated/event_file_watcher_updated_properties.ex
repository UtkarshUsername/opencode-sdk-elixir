defmodule OpenCode.Generated.EventFileWatcherUpdatedProperties do
  @moduledoc """
  Provides struct and type for a EventFileWatcherUpdatedProperties
  """

  @type t :: %__MODULE__{event: String.t(), file: String.t()}

  defstruct [:event, :file]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [event: {:union, const: "add", const: "change", const: "unlink"}, file: :string]
  end
end
