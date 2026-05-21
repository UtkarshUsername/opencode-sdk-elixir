defmodule OpenCode.Generated.EventAccountSwitchedProperties do
  @moduledoc """
  Provides struct and type for a EventAccountSwitchedProperties
  """

  @type t :: %__MODULE__{from: String.t() | nil, service_id: String.t(), to: String.t() | nil}

  defstruct [:from, :service_id, :to]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [from: :string, service_id: :string, to: :string]
  end
end
