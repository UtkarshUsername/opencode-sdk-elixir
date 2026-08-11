defmodule OpenCode.Generated.PtyExited do
  @moduledoc """
  Provides struct and type for a PtyExited
  """

  @type t :: %__MODULE__{
          data: OpenCode.Generated.PtyExitedData.t(),
          durable: OpenCode.Generated.PtyExitedDurable.t() | nil,
          id: String.t(),
          location: OpenCode.Generated.LocationRef.t() | nil,
          metadata: map | nil,
          type: String.t()
        }

  defstruct [:data, :durable, :id, :location, :metadata, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: {OpenCode.Generated.PtyExitedData, :t},
      durable: {OpenCode.Generated.PtyExitedDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "pty.exited"}
    ]
  end
end
