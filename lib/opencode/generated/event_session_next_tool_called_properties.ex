defmodule OpenCode.Generated.EventSessionNextToolCalledProperties do
  @moduledoc """
  Provides struct and type for a EventSessionNextToolCalledProperties
  """

  @type t :: %__MODULE__{
          call_id: String.t(),
          input: map,
          provider: OpenCode.Generated.EventSessionNextToolCalledPropertiesProvider.t(),
          session_id: String.t(),
          timestamp: number,
          tool: String.t()
        }

  defstruct [:call_id, :input, :provider, :session_id, :timestamp, :tool]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      call_id: :string,
      input: :map,
      provider: {OpenCode.Generated.EventSessionNextToolCalledPropertiesProvider, :t},
      session_id: :string,
      timestamp: :number,
      tool: :string
    ]
  end
end
