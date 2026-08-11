defmodule OpenCode.Generated.ProviderRequest do
  @moduledoc """
  Provides struct and type for a ProviderRequest
  """

  @type t :: %__MODULE__{body: map, headers: map}

  defstruct [:body, :headers]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [body: :map, headers: :map]
  end
end
