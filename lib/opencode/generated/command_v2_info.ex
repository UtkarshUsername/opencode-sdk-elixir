defmodule OpenCode.Generated.CommandV2Info do
  @moduledoc """
  Provides struct and type for a CommandV2Info
  """

  @type t :: %__MODULE__{
          agent: String.t() | nil,
          description: String.t() | nil,
          model: OpenCode.Generated.ModelRef.t() | nil,
          name: String.t(),
          subtask: boolean | nil,
          template: String.t()
        }

  defstruct [:agent, :description, :model, :name, :subtask, :template]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      agent: :string,
      description: :string,
      model: {OpenCode.Generated.ModelRef, :t},
      name: :string,
      subtask: :boolean,
      template: :string
    ]
  end
end
