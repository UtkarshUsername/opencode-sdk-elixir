defmodule OpenCode.Generated.SessionNextMovedData do
  @moduledoc """
  Provides struct and type for a SessionNextMovedData
  """

  @type t :: %__MODULE__{
          location: OpenCode.Generated.LocationRef.t(),
          session_id: String.t(),
          subdirectory: String.t() | nil,
          timestamp: number
        }

  defstruct [:location, :session_id, :subdirectory, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      location: {OpenCode.Generated.LocationRef, :t},
      session_id: :string,
      subdirectory: :string,
      timestamp: :number
    ]
  end
end
