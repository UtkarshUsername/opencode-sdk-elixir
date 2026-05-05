defmodule OpenCode.Generated.SessionErrorUnknown do
  @moduledoc """
  Provides struct and type for a SessionErrorUnknown
  """

  @type t :: %__MODULE__{message: String.t(), type: String.t()}

  defstruct [:message, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message: :string, type: {:const, "unknown"}]
  end
end
