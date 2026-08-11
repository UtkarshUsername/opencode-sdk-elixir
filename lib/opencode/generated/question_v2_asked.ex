defmodule OpenCode.Generated.QuestionV2Asked do
  @moduledoc """
  Provides struct and type for a QuestionV2Asked
  """

  @type t :: %__MODULE__{
          data: OpenCode.Generated.QuestionV2AskedData.t(),
          durable: OpenCode.Generated.QuestionV2AskedDurable.t() | nil,
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
      data: {OpenCode.Generated.QuestionV2AskedData, :t},
      durable: {OpenCode.Generated.QuestionV2AskedDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "question.v2.asked"}
    ]
  end
end
