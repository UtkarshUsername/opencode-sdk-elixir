defmodule OpenCode.Generated.ProviderAuthAuthorization do
  @moduledoc """
  Provides struct and type for a ProviderAuthAuthorization
  """

  @type t :: %__MODULE__{instructions: String.t(), method: String.t(), url: String.t()}

  defstruct [:instructions, :method, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [instructions: :string, method: {:enum, ["auto", "code"]}, url: :string]
  end
end
