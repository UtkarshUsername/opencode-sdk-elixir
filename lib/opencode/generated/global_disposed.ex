defmodule OpenCode.Generated.GlobalDisposed do
  @moduledoc """
  Provides struct and type for a GlobalDisposed
  """

  @type t :: %__MODULE__{
          data: map,
          durable: OpenCode.Generated.GlobalDisposedDurable.t() | nil,
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
      data: :map,
      durable: {OpenCode.Generated.GlobalDisposedDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "global.disposed"}
    ]
  end
end
