defmodule OpenCode.Generated.ApiAuth do
  @moduledoc """
  Provides struct and type for a ApiAuth
  """

  @type t :: %__MODULE__{key: String.t(), type: String.t()}

  defstruct [:key, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [key: :string, type: {:const, "api"}]
  end
end
