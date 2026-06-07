defmodule OpenCode.Generated.SessionsResponse do
  @moduledoc """
  Provides struct and type for a SessionsResponse
  """

  @type t :: %__MODULE__{
          cursor: OpenCode.Generated.SessionsResponseCursor.t(),
          data: [OpenCode.Generated.SessionV2Info.t()]
        }

  defstruct [:cursor, :data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cursor: {OpenCode.Generated.SessionsResponseCursor, :t},
      data: [{OpenCode.Generated.SessionV2Info, :t}]
    ]
  end
end
