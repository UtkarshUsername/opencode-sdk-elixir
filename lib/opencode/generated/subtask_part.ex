defmodule OpenCode.Generated.SubtaskPart do
  @moduledoc """
  Provides struct and type for a SubtaskPart
  """

  @type t :: %__MODULE__{
          agent: String.t(),
          command: String.t() | nil,
          description: String.t(),
          id: String.t(),
          message_id: String.t(),
          model: OpenCode.Generated.SubtaskPartModel.t() | nil,
          prompt: String.t(),
          session_id: String.t(),
          type: String.t()
        }

  defstruct [
    :agent,
    :command,
    :description,
    :id,
    :message_id,
    :model,
    :prompt,
    :session_id,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      agent: :string,
      command: :string,
      description: :string,
      id: :string,
      message_id: :string,
      model: {OpenCode.Generated.SubtaskPartModel, :t},
      prompt: :string,
      session_id: :string,
      type: {:const, "subtask"}
    ]
  end
end
