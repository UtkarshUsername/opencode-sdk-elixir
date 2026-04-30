defmodule OpenCode.Generated.ConsoleState do
  @moduledoc """
  Provides struct and type for a ConsoleState
  """

  @type t :: %__MODULE__{
          active_org_name: String.t() | nil,
          console_managed_providers: [String.t()],
          switchable_org_count: integer
        }

  defstruct [:active_org_name, :console_managed_providers, :switchable_org_count]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      active_org_name: :string,
      console_managed_providers: [:string],
      switchable_org_count: :integer
    ]
  end
end
