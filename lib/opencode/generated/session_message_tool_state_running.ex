defmodule OpenCode.Generated.SessionMessageToolStateRunning do
  @moduledoc """
  Provides struct and type for a SessionMessageToolStateRunning
  """

  @type t :: %__MODULE__{
          content: [
            OpenCode.Generated.ToolFileContent.t() | OpenCode.Generated.ToolTextContent.t()
          ],
          input: map,
          status: String.t(),
          structured: map
        }

  defstruct [:content, :input, :status, :structured]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      content: [
        union: [
          {OpenCode.Generated.ToolFileContent, :t},
          {OpenCode.Generated.ToolTextContent, :t}
        ]
      ],
      input: :map,
      status: {:const, "running"},
      structured: :map
    ]
  end
end
