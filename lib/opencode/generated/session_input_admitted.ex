defmodule OpenCode.Generated.SessionInputAdmitted do
  @moduledoc """
  Provides struct and type for a SessionInputAdmitted
  """

  @type t :: %__MODULE__{
          admitted_seq: integer,
          delivery: String.t(),
          id: String.t(),
          promoted_seq: integer | nil,
          prompt: OpenCode.Generated.Prompt.t(),
          session_id: String.t(),
          time_created: number
        }

  defstruct [:admitted_seq, :delivery, :id, :promoted_seq, :prompt, :session_id, :time_created]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      admitted_seq: :integer,
      delivery: {:enum, ["steer", "queue"]},
      id: :string,
      promoted_seq: :integer,
      prompt: {OpenCode.Generated.Prompt, :t},
      session_id: :string,
      time_created: :number
    ]
  end
end
