defmodule OpenCode.Generated.QuestionAsked do
  @moduledoc """
  Provides struct and type for a QuestionAsked
  """

  @type t :: %__MODULE__{
          data: OpenCode.Generated.QuestionAskedData.t(),
          durable: OpenCode.Generated.QuestionAskedDurable.t() | nil,
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
      data: {OpenCode.Generated.QuestionAskedData, :t},
      durable: {OpenCode.Generated.QuestionAskedDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "question.asked"}
    ]
  end
end
