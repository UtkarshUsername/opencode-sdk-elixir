defmodule OpenCode.Generated.EventSessionNextModelSwitchedProperties do
  @moduledoc """
  Provides struct and type for a EventSessionNextModelSwitchedProperties
  """

  @type t :: %__MODULE__{
          model: OpenCode.Generated.EventSessionNextModelSwitchedPropertiesModel.t(),
          session_id: String.t(),
          timestamp: number
        }

  defstruct [:model, :session_id, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      model: {OpenCode.Generated.EventSessionNextModelSwitchedPropertiesModel, :t},
      session_id: :string,
      timestamp: :number
    ]
  end
end
