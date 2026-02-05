defmodule OpenCode.Generated.Pty do
  @moduledoc """
  Provides struct and type for a Pty
  """

  @type t :: %__MODULE__{
          args: [String.t()],
          command: String.t(),
          cwd: String.t(),
          id: String.t(),
          pid: number,
          status: String.t(),
          title: String.t()
        }

  defstruct [:args, :command, :cwd, :id, :pid, :status, :title]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      args: [:string],
      command: :string,
      cwd: :string,
      id: :string,
      pid: :number,
      status: {:enum, ["running", "exited"]},
      title: :string
    ]
  end
end
