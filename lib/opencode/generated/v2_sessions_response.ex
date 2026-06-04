defmodule OpenCode.Generated.V2SessionsResponse do
  @moduledoc """
  Provides struct and type for a V2SessionsResponse
  """

  @type t :: %__MODULE__{
          cursor: OpenCode.Generated.V2SessionsResponseCursor.t(),
          data: [OpenCode.Generated.SessionV2Info.t()]
        }

  defstruct [:cursor, :data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cursor: {OpenCode.Generated.V2SessionsResponseCursor, :t},
      data: [{OpenCode.Generated.SessionV2Info, :t}]
    ]
  end
end
