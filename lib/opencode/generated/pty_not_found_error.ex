defmodule OpenCode.Generated.PtyNotFoundError do
  @moduledoc """
  Provides struct and type for a PtyNotFoundError
  """

  @type t :: %__MODULE__{message: String.t(), pty_id: String.t(), tag: String.t()}

  defstruct [:message, :pty_id, :tag]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message: :string, pty_id: :string, tag: {:const, "PtyNotFoundError"}]
  end
end
