defmodule OpenCode.Generated.ConnectionCredentialInfo do
  @moduledoc """
  Provides struct and type for a ConnectionCredentialInfo
  """

  @type t :: %__MODULE__{id: String.t(), label: String.t(), type: String.t()}

  defstruct [:id, :label, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [id: :string, label: :string, type: {:const, "credential"}]
  end
end
