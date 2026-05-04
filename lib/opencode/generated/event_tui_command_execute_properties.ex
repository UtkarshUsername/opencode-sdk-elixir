defmodule OpenCode.Generated.EventTuiCommandExecuteProperties do
  @moduledoc """
  Provides struct and types for a EventTuiCommandExecuteProperties
  """

  @type t :: %__MODULE__{command: String.t()}

  defstruct [:command]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      command:
        {:union,
         [
           :string,
           enum: [
             "session.list",
             "session.new",
             "session.share",
             "session.interrupt",
             "session.compact",
             "session.page.up",
             "session.page.down",
             "session.line.up",
             "session.line.down",
             "session.half.page.up",
             "session.half.page.down",
             "session.first",
             "session.last",
             "prompt.clear",
             "prompt.submit",
             "agent.cycle"
           ]
         ]}
    ]
  end
end
