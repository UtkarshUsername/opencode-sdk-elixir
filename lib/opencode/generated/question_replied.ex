defmodule OpenCode.Generated.QuestionReplied do
  @moduledoc """
  Provides struct and type for a QuestionReplied
  """

  @type t :: %__MODULE__{
          data: OpenCode.Generated.QuestionRepliedData.t(),
          durable: OpenCode.Generated.QuestionRepliedDurable.t() | nil,
          id: String.t(),
          location: OpenCode.Generated.LocationRef.t() | nil,
          metadata: map | nil,
          type: String.t()
        }

  defstruct [:data, :durable, :id, :location, :metadata, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: {OpenCode.Generated.QuestionRepliedData, :t},
      durable: {OpenCode.Generated.QuestionRepliedDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "question.replied"}
    ]
  end
end
