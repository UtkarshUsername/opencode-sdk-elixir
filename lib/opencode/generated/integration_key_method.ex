defmodule OpenCode.Generated.IntegrationKeyMethod do
  @moduledoc """
  Provides struct and type for a IntegrationKeyMethod
  """

  @type t :: %__MODULE__{label: String.t() | nil, type: String.t()}

  defstruct [:label, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [label: :string, type: {:const, "key"}]
  end
end
