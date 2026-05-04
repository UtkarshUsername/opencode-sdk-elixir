defmodule OpenCode.Generated.SessionMessageToolStateError do
  @moduledoc """
  Provides struct and type for a SessionMessageToolStateError
  """

  @type t :: %__MODULE__{
          content: [
            OpenCode.Generated.ToolFileContent.t() | OpenCode.Generated.ToolTextContent.t()
          ],
          error: OpenCode.Generated.SessionMessageToolStateErrorError.t(),
          input: map,
          status: String.t(),
          structured: map
        }

  defstruct [:content, :error, :input, :status, :structured]

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
      error: {OpenCode.Generated.SessionMessageToolStateErrorError, :t},
      input: :map,
      status: {:const, "error"},
      structured: :map
    ]
  end
end
