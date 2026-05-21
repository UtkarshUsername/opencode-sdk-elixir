defmodule OpenCode.Generated.EventAccountRemovedProperties do
  @moduledoc """
  Provides struct and type for a EventAccountRemovedProperties
  """

  @type t :: %__MODULE__{account: OpenCode.Generated.AccountV2Info.t()}

  defstruct [:account]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [account: {OpenCode.Generated.AccountV2Info, :t}]
  end
end
