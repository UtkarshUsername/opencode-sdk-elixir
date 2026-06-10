defmodule OpenCode.Generated.ReferenceLocalSource do
  @moduledoc """
  Provides struct and type for a ReferenceLocalSource
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          hidden: boolean | nil,
          path: String.t(),
          type: String.t()
        }

  defstruct [:description, :hidden, :path, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [description: :string, hidden: :boolean, path: :string, type: {:const, "local"}]
  end
end
