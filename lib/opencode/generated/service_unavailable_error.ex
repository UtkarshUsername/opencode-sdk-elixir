defmodule OpenCode.Generated.ServiceUnavailableError do
  @moduledoc """
  Provides struct and type for a ServiceUnavailableError
  """

  @type t :: %__MODULE__{message: String.t(), service: String.t() | nil, tag: String.t()}

  defstruct [:message, :service, :tag]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message: :string, service: :string, tag: {:const, "ServiceUnavailableError"}]
  end
end
