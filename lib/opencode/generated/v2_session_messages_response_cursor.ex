defmodule OpenCode.Generated.V2SessionMessagesResponseCursor do
  @moduledoc """
  Provides struct and type for a V2SessionMessagesResponseCursor
  """

  @type t :: %__MODULE__{next: String.t() | nil, previous: String.t() | nil}

  defstruct [:next, :previous]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [next: :string, previous: :string]
  end
end
