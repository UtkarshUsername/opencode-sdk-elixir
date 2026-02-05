defmodule OpenCode.Generated.ToolStateError do
  @moduledoc """
  Provides struct and type for a ToolStateError
  """

  @type t :: %__MODULE__{
          error: String.t(),
          input: map,
          metadata: map | nil,
          status: String.t(),
          time: OpenCode.Generated.ToolStateErrorTime.t()
        }

  defstruct [:error, :input, :metadata, :status, :time]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      error: :string,
      input: :map,
      metadata: :map,
      status: {:const, "error"},
      time: {OpenCode.Generated.ToolStateErrorTime, :t}
    ]
  end
end
