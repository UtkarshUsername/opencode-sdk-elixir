defmodule OpenCode.Generated.EventSessionNextModelSwitchedProperties do
  @moduledoc """
  Provides struct and type for a EventSessionNextModelSwitchedProperties
  """

  @type t :: %__MODULE__{
          id: String.t(),
          provider_id: String.t(),
          session_id: String.t(),
          timestamp: number,
          variant: String.t() | nil
        }

  defstruct [:id, :provider_id, :session_id, :timestamp, :variant]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [id: :string, provider_id: :string, session_id: :string, timestamp: :number, variant: :string]
  end
end
