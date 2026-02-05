defmodule OpenCode.Generated.EventFileWatcherUpdated do
  @moduledoc """
  Provides struct and type for a EventFileWatcherUpdated
  """

  @type t :: %__MODULE__{
          properties: OpenCode.Generated.EventFileWatcherUpdatedProperties.t(),
          type: String.t()
        }

  defstruct [:properties, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      properties: {OpenCode.Generated.EventFileWatcherUpdatedProperties, :t},
      type: {:const, "file.watcher.updated"}
    ]
  end
end
