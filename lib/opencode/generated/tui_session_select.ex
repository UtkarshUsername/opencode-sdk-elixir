defmodule OpenCode.Generated.TuiSessionSelect do
  @moduledoc """
  Provides struct and type for a TuiSessionSelect
  """

  @type t :: %__MODULE__{
          data: OpenCode.Generated.TuiSessionSelectData.t(),
          durable: OpenCode.Generated.TuiSessionSelectDurable.t() | nil,
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
      data: {OpenCode.Generated.TuiSessionSelectData, :t},
      durable: {OpenCode.Generated.TuiSessionSelectDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "tui.session.select"}
    ]
  end
end
