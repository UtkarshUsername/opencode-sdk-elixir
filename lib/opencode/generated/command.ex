defmodule OpenCode.Generated.Command do
  @moduledoc """
  Provides struct and type for a Command
  """

  @type t :: %__MODULE__{
          agent: String.t() | nil,
          description: String.t() | nil,
          hints: [String.t()],
          model: String.t() | nil,
          name: String.t(),
          source: String.t() | nil,
          subtask: boolean | nil,
          template: String.t()
        }

  defstruct [:agent, :description, :hints, :model, :name, :source, :subtask, :template]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      agent: :string,
      description: :string,
      hints: [:string],
      model: :string,
      name: :string,
      source: {:enum, ["command", "mcp", "skill"]},
      subtask: :boolean,
      template: :string
    ]
  end
end
