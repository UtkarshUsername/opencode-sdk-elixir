defmodule OpenCode.Generated.SessionMessageShell do
  @moduledoc """
  Provides struct and type for a SessionMessageShell
  """

  @type t :: %__MODULE__{
          call_id: String.t(),
          command: String.t(),
          id: String.t(),
          metadata: map | nil,
          output: String.t(),
          time: OpenCode.Generated.SessionMessageShellTime.t(),
          type: String.t()
        }

  defstruct [:call_id, :command, :id, :metadata, :output, :time, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      call_id: :string,
      command: :string,
      id: :string,
      metadata: :map,
      output: :string,
      time: {OpenCode.Generated.SessionMessageShellTime, :t},
      type: {:const, "shell"}
    ]
  end
end
