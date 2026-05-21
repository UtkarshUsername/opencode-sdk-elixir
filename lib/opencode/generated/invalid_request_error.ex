defmodule OpenCode.Generated.InvalidRequestError do
  @moduledoc """
  Provides struct and type for a InvalidRequestError
  """

  @type t :: %__MODULE__{
          field: String.t() | nil,
          kind: String.t() | nil,
          message: String.t(),
          tag: String.t()
        }

  defstruct [:field, :kind, :message, :tag]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [field: :string, kind: :string, message: :string, tag: {:const, "InvalidRequestError"}]
  end
end
