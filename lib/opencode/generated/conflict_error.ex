defmodule OpenCode.Generated.ConflictError do
  @moduledoc """
  Provides struct and type for a ConflictError
  """

  @type t :: %__MODULE__{message: String.t(), resource: String.t() | nil, tag: String.t()}

  defstruct [:message, :resource, :tag]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message: :string, resource: :string, tag: {:const, "ConflictError"}]
  end
end
