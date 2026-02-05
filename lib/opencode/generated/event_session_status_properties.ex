defmodule OpenCode.Generated.EventSessionStatusProperties do
  @moduledoc """
  Provides struct and type for a EventSessionStatusProperties
  """

  @type t :: %__MODULE__{
          session_id: String.t(),
          status: OpenCode.Generated.EventSessionStatusPropertiesStatus.t()
        }

  defstruct [:session_id, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [session_id: :string, status: {OpenCode.Generated.EventSessionStatusPropertiesStatus, :t}]
  end
end
