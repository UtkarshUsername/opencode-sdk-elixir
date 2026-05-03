defmodule OpenCode.Generated.SyncEventSessionNextToolSuccessData do
  @moduledoc """
  Provides struct and type for a SyncEventSessionNextToolSuccessData
  """

  @type t :: %__MODULE__{
          call_id: String.t(),
          content: [
            OpenCode.Generated.ToolFileContent.t() | OpenCode.Generated.ToolTextContent.t()
          ],
          provider: OpenCode.Generated.SyncEventSessionNextToolSuccessDataProvider.t(),
          session_id: String.t(),
          structured: map,
          timestamp: number
        }

  defstruct [:call_id, :content, :provider, :session_id, :structured, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      call_id: :string,
      content: [
        union: [
          {OpenCode.Generated.ToolFileContent, :t},
          {OpenCode.Generated.ToolTextContent, :t}
        ]
      ],
      provider: {OpenCode.Generated.SyncEventSessionNextToolSuccessDataProvider, :t},
      session_id: :string,
      structured: :map,
      timestamp: :number
    ]
  end
end
