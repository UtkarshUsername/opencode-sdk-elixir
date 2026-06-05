defmodule OpenCode.Generated.SessionMessageSystem do
  @moduledoc """
  Provides struct and type for a SessionMessageSystem
  """

  @type t :: %__MODULE__{
          id: String.t(),
          metadata: map | nil,
          text: String.t(),
          time: OpenCode.Generated.SessionMessageSystemTime.t(),
          type: String.t()
        }

  defstruct [:id, :metadata, :text, :time, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      metadata: :map,
      text: :string,
      time: {OpenCode.Generated.SessionMessageSystemTime, :t},
      type: {:const, "system"}
    ]
  end
end
