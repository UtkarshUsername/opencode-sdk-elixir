defmodule OpenCode.Generated.TuiPromptAppend do
  @moduledoc """
  Provides struct and type for a TuiPromptAppend
  """

  @type t :: %__MODULE__{
          data: OpenCode.Generated.TuiPromptAppendData.t(),
          durable: OpenCode.Generated.TuiPromptAppendDurable.t() | nil,
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
      data: {OpenCode.Generated.TuiPromptAppendData, :t},
      durable: {OpenCode.Generated.TuiPromptAppendDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "tui.prompt.append"}
    ]
  end
end
