defmodule OpenCode.Generated.TuiToastShow do
  @moduledoc """
  Provides struct and type for a TuiToastShow
  """

  @type t :: %__MODULE__{
          data: OpenCode.Generated.TuiToastShowData.t(),
          durable: OpenCode.Generated.TuiToastShowDurable.t() | nil,
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
      data: {OpenCode.Generated.TuiToastShowData, :t},
      durable: {OpenCode.Generated.TuiToastShowDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "tui.toast.show"}
    ]
  end
end
