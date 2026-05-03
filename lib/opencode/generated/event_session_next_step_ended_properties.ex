defmodule OpenCode.Generated.EventSessionNextStepEndedProperties do
  @moduledoc """
  Provides struct and type for a EventSessionNextStepEndedProperties
  """

  @type t :: %__MODULE__{
          cost: number,
          finish: String.t(),
          session_id: String.t(),
          snapshot: String.t() | nil,
          timestamp: number,
          tokens: OpenCode.Generated.EventSessionNextStepEndedPropertiesTokens.t()
        }

  defstruct [:cost, :finish, :session_id, :snapshot, :timestamp, :tokens]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cost: :number,
      finish: :string,
      session_id: :string,
      snapshot: :string,
      timestamp: :number,
      tokens: {OpenCode.Generated.EventSessionNextStepEndedPropertiesTokens, :t}
    ]
  end
end
