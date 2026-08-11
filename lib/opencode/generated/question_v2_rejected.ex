defmodule OpenCode.Generated.QuestionV2Rejected do
  @moduledoc """
  Provides struct and type for a QuestionV2Rejected
  """

  @type t :: %__MODULE__{
          data: OpenCode.Generated.QuestionV2RejectedData.t(),
          durable: OpenCode.Generated.QuestionV2RejectedDurable.t() | nil,
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
      data: {OpenCode.Generated.QuestionV2RejectedData, :t},
      durable: {OpenCode.Generated.QuestionV2RejectedDurable, :t},
      id: :string,
      location: {OpenCode.Generated.LocationRef, :t},
      metadata: :map,
      type: {:const, "question.v2.rejected"}
    ]
  end
end
