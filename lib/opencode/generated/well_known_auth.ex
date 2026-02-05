defmodule OpenCode.Generated.WellKnownAuth do
  @moduledoc """
  Provides struct and type for a WellKnownAuth
  """

  @type t :: %__MODULE__{key: String.t(), token: String.t(), type: String.t()}

  defstruct [:key, :token, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [key: :string, token: :string, type: {:const, "wellknown"}]
  end
end
