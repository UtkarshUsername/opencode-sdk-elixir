defmodule OpenCode.Generated.StepStartPart do
  @moduledoc """
  Provides struct and type for a StepStartPart
  """

  @type t :: %__MODULE__{
          id: String.t(),
          message_id: String.t(),
          session_id: String.t(),
          snapshot: String.t() | nil,
          type: String.t()
        }

  defstruct [:id, :message_id, :session_id, :snapshot, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      message_id: :string,
      session_id: :string,
      snapshot: :string,
      type: {:const, "step-start"}
    ]
  end
end
