defmodule OpenCode.Generated.SubtaskPartInput do
  @moduledoc """
  Provides struct and type for a SubtaskPartInput
  """

  @type t :: %__MODULE__{
          agent: String.t(),
          command: String.t() | nil,
          description: String.t(),
          id: String.t() | nil,
          model: OpenCode.Generated.SubtaskPartInputModel.t() | nil,
          prompt: String.t(),
          type: String.t()
        }

  defstruct [:agent, :command, :description, :id, :model, :prompt, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      agent: :string,
      command: :string,
      description: :string,
      id: :string,
      model: {OpenCode.Generated.SubtaskPartInputModel, :t},
      prompt: :string,
      type: {:const, "subtask"}
    ]
  end
end
