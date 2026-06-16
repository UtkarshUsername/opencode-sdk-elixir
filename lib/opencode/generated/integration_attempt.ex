defmodule OpenCode.Generated.IntegrationAttempt do
  @moduledoc """
  Provides struct and type for a IntegrationAttempt
  """

  @type t :: %__MODULE__{
          attempt_id: String.t(),
          instructions: String.t(),
          mode: String.t(),
          time: OpenCode.Generated.IntegrationAttemptTime.t(),
          url: String.t()
        }

  defstruct [:attempt_id, :instructions, :mode, :time, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      attempt_id: :string,
      instructions: :string,
      mode: {:enum, ["auto", "code"]},
      time: {OpenCode.Generated.IntegrationAttemptTime, :t},
      url: :string
    ]
  end
end
