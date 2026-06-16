defmodule OpenCode.Generated.IntegrationEnvMethod do
  @moduledoc """
  Provides struct and type for a IntegrationEnvMethod
  """

  @type t :: %__MODULE__{names: [String.t()], type: String.t()}

  defstruct [:names, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [names: [:string], type: {:const, "env"}]
  end
end
