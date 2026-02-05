defmodule OpenCode.Generated.StepFinishPart do
  @moduledoc """
  Provides struct and type for a StepFinishPart
  """

  @type t :: %__MODULE__{
          cost: number,
          id: String.t(),
          message_id: String.t(),
          reason: String.t(),
          session_id: String.t(),
          snapshot: String.t() | nil,
          tokens: OpenCode.Generated.StepFinishPartTokens.t(),
          type: String.t()
        }

  defstruct [:cost, :id, :message_id, :reason, :session_id, :snapshot, :tokens, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cost: :number,
      id: :string,
      message_id: :string,
      reason: :string,
      session_id: :string,
      snapshot: :string,
      tokens: {OpenCode.Generated.StepFinishPartTokens, :t},
      type: {:const, "step-finish"}
    ]
  end
end
